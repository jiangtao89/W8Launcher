package com.jt.writewpdb;

import java.io.File;
import java.net.URISyntaxException;
import java.util.List;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

public class WriteWpDb extends BroadcastReceiver {
	
	final String PACKAG_NAME = "com.lx.launcher8";

	@Override
	public void onReceive(Context context, Intent intent) {
		// TODO Auto-generated method stub
		String action = intent.getAction();
		if (action.equals(Intent.ACTION_LOCALE_CHANGED)) {
			readDb(context);
		}
	}

	void readDb(Context context) {
		Context contextWP = null;

		try {
			contextWP = context.createPackageContext(PACKAG_NAME,
					Context.CONTEXT_IGNORE_SECURITY);
		} catch (NameNotFoundException e) {
			e.printStackTrace();
		}

		if (contextWP != null) {
			File file = contextWP.getDatabasePath("anallLauncher.db");

			SQLiteDatabase db = contextWP.openOrCreateDatabase(
					"anallLauncher.db", context.MODE_WORLD_READABLE
							| context.MODE_WORLD_WRITEABLE, null);
			Cursor cursor = db.query("cell", new String[] { "_id", "title",
					"intent", "cellType" }, null, null, null, null, null);

			PackageManager pm = context.getPackageManager();
			while (cursor.moveToNext()) {
				int id = cursor.getInt(0);
				String title = cursor.getString(1);
				String uri = cursor.getString(2);
				int cellType = cursor.getInt(3);

				// Log.e("JT", "title: " + title);
				// Log.e("JT", "intent: " + uri);

				Intent intent = null;
				if (uri != null && (!("".equals(uri)))) {
					try {
						intent = Intent.parseUri(uri, 0);
					} catch (URISyntaxException e) {
						e.printStackTrace();
						intent = null;
					}
				}

				if (intent != null) {
					List<ResolveInfo> list = pm
							.queryIntentActivities(intent, 0);
					String newTitle = "";
					// Log.e("JT", "list.size: " + list.size());
					if (list != null && list.size() > 0) {
						ResolveInfo info = list.get(0);
						newTitle = info.loadLabel(pm).toString();
					}
					if (!("".equals(newTitle))) {
						// Log.e("JT", "newTitle: " + newTitle);
						db.execSQL("UPDATE cell SET title='" + newTitle + "' "
								+ "WHERE _id='" + id + "'");
					}
				} else if (cellType == 229504) {
					String newTitle = contextWP.getString(contextWP.getResources().getIdentifier("search_text", "string", PACKAG_NAME));
					if (!("".equals(newTitle))) {
						// Log.e("JT", "newTitle: " + newTitle);
						db.execSQL("UPDATE cell SET title='" + newTitle + "' "
								+ "WHERE _id='" + id + "'");
					}
				}else if (cellType == 229385) {
					String newTitle = contextWP.getString(contextWP.getResources().getIdentifier("theme_title", "string", PACKAG_NAME));
					if (!("".equals(newTitle))) {
						// Log.e("JT", "newTitle: " + newTitle);
						db.execSQL("UPDATE cell SET title='" + newTitle + "' "
								+ "WHERE _id='" + id + "'");
					}
				}else if (cellType == 229384) {
					String newTitle = contextWP.getString(contextWP.getResources().getIdentifier("menu", "string", PACKAG_NAME));
					if (!("".equals(newTitle))) {
						// Log.e("JT", "newTitle: " + newTitle);
						db.execSQL("UPDATE cell SET title='" + newTitle + "' "
								+ "WHERE _id='" + id + "'");
					}
				}
			}
			cursor.close();
			cursor = null;
			//
			//
			// cursor = db.query("cell",
			// new String[] { "_id", "title", "intent" }, null, null,
			// null, null, null);
			// Log.e("JT", "-----------------" );
			// while (cursor.moveToNext()) {
			// int id = cursor.getInt(0);
			// String title = cursor.getString(1);
			// String intent = cursor.getString(2);
			//
			// Log.e("JT", "title: " + title);
			// Log.e("JT", "intent: " + intent);
			// }
			//
			// cursor.close();
			db.close();
			db = null;
		}
	}

}
