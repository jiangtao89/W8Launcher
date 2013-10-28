.class public Lcom/lx/launcher8/db/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field static final DB_NAME:Ljava/lang/String; = "anallLauncher.db"

.field static final DB_VERSION:I = 0x2

.field private static INSTANCE:Lcom/lx/launcher8/db/DBHelper; = null

.field static final TAG_CELL:Ljava/lang/String; = "Cell"

.field static final TAG_CELLS:Ljava/lang/String; = "Cells"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    const-string v0, "anallLauncher.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lx/launcher8/db/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 58
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 62
    iput-object p1, p0, Lcom/lx/launcher8/db/DBHelper;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private addCompone(Landroid/content/res/TypedArray;Landroid/content/Intent;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 6
    .parameter "a"
    .parameter "intent"
    .parameter "pm"

    .prologue
    const/4 v5, 0x0

    .line 159
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, pkg:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, clz:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, action:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_1

    .line 163
    const/4 v4, 0x0

    .line 173
    :goto_0
    return-object v4

    .line 164
    :cond_1
    if-eqz v0, :cond_2

    .line 165
    new-instance p2, Landroid/content/Intent;

    .end local p2
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local p2
    const/high16 v4, 0x1000

    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 169
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v2, cn:Landroid/content/ComponentName;
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 172
    .end local v2           #cn:Landroid/content/ComponentName;
    :cond_3
    invoke-direct {p0, p2, p3, v3, v1}, Lcom/lx/launcher8/db/DBHelper;->checkIntent(Landroid/content/Intent;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 173
    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private checkIntent(Landroid/content/Intent;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .parameter "defIntent"
    .parameter "pm"
    .parameter "pkg"
    .parameter "clz"

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v5, p0, Lcom/lx/launcher8/db/DBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {p0, p3, p4, v5}, Lcom/lx/launcher8/db/DBHelper;->getResFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, intents:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    .line 196
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 179
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    .line 180
    .local v1, intent:Landroid/content/Intent;
    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v3, v2, v4

    .line 181
    .local v3, uri:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 180
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 184
    :cond_3
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v3, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 186
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_4
    invoke-static {p2, v1}, Lcom/lx/launcher8/db/DBHelper;->isValidateIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object p1, v1

    .line 193
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/net/URISyntaxException;
    goto :goto_2
.end method

.method private getResFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 4
    .parameter "pkg"
    .parameter "clz"
    .parameter "res"

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object v1

    .line 215
    :cond_1
    const-string v2, "com.android.mms"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    const v1, 0x7f070014

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 217
    :cond_2
    const-string v2, "com.android.contacts"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ".activities.TwelveKeyDialer"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    const v1, 0x7f070015

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 219
    :cond_3
    const-string v2, "com.android.browser"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    const v1, 0x7f070017

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 221
    :cond_4
    const-string v2, "com.android.email"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 222
    const v1, 0x7f07001d

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 223
    :cond_5
    const-string v2, "com.android.gallery"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 224
    const v1, 0x7f07001b

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 225
    :cond_6
    const-string v2, "com.android.camera"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 226
    const v1, 0x7f07001c

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 227
    :cond_7
    const-string v2, "com.android.contacts"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "com.android.contacts.DialtactsContactsEntryActivity"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 228
    const v1, 0x7f070013

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 229
    :cond_8
    const-string v2, "com.google.android.apps.maps"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 230
    const v1, 0x7f070016

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 231
    :cond_9
    const-string v2, "com.android.music"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 232
    const v1, 0x7f070018

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 233
    :cond_a
    const-string v2, "com.anall.soft"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 234
    const v1, 0x7f070019

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 235
    :cond_b
    const-string v2, "com.android.deskclock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 236
    const v1, 0x7f07001a

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 237
    :cond_c
    const-string v2, "com.android.calculator2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 238
    const v1, 0x7f07001e

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 239
    :cond_d
    const-string v2, "com.android.settings"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.android.settings.DateTimeSettings"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 240
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 241
    .local v0, produce:Ljava/lang/String;
    if-eqz v0, :cond_e

    const-string v2, "tita"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 244
    :cond_e
    const v1, 0x7f07001f

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 245
    .end local v0           #produce:Ljava/lang/String;
    :cond_f
    const-string v2, "com.android.settings"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.android.settings.Settings"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const v1, 0x7f070020

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method static declared-synchronized getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 44
    const-class v2, Lcom/lx/launcher8/db/DBHelper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/lx/launcher8/db/DBHelper;->INSTANCE:Lcom/lx/launcher8/db/DBHelper;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/lx/launcher8/db/DBHelper;

    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/lx/launcher8/db/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/lx/launcher8/db/DBHelper;->INSTANCE:Lcom/lx/launcher8/db/DBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    :try_start_1
    sget-object v1, Lcom/lx/launcher8/db/DBHelper;->INSTANCE:Lcom/lx/launcher8/db/DBHelper;

    invoke-virtual {v1}, Lcom/lx/launcher8/db/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 51
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :goto_0
    monitor-exit v2

    return-object v1

    .line 50
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_0
    move-exception v0

    .line 51
    .restart local v0       #e:Landroid/database/sqlite/SQLiteException;
    const/4 v1, 0x0

    goto :goto_0

    .line 44
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isValidateIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 4
    .parameter "pm"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 200
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 201
    :cond_1
    const/high16 v2, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 202
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 203
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 205
    .local v1, result:Z
    :cond_2
    if-eqz v1, :cond_0

    .line 206
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private loadDefaultCell(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 22
    .parameter "db"

    .prologue
    .line 82
    new-instance v13, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v13, intent:Landroid/content/Intent;
    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/high16 v19, 0x1000

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v18, values:Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 88
    .local v8, cellCount:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/DBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 89
    .local v16, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/DBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f050001

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 90
    .local v15, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v15}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 93
    .local v5, as:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    .local v17, type:I
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 94
    :cond_1
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    new-instance v19, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v20, "No start tag found!!"

    invoke-direct/range {v19 .. v20}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    .end local v5           #as:Landroid/util/AttributeSet;
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .end local v16           #pm:Landroid/content/pm/PackageManager;
    .end local v17           #type:I
    :catch_0
    move-exception v11

    .line 151
    .local v11, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v19, "DBHelper"

    const-string v20, "Got Exception parser default cells"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v11           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_0
    return v8

    .line 95
    .restart local v5       #as:Landroid/util/AttributeSet;
    .restart local v15       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v16       #pm:Landroid/content/pm/PackageManager;
    .restart local v17       #type:I
    :cond_3
    :try_start_1
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Cells"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    new-instance v19, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Unexpected start tag: found "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 96
    const-string v21, ", expected "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Cells"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .end local v5           #as:Landroid/util/AttributeSet;
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .end local v16           #pm:Landroid/content/pm/PackageManager;
    .end local v17           #type:I
    :catch_1
    move-exception v11

    .line 153
    .local v11, e:Ljava/io/IOException;
    const-string v19, "DBHelper"

    const-string v20, "Got Exception parser default cells"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v11           #e:Ljava/io/IOException;
    .restart local v5       #as:Landroid/util/AttributeSet;
    .restart local v15       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v16       #pm:Landroid/content/pm/PackageManager;
    .restart local v17       #type:I
    :cond_4
    :try_start_2
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 98
    .local v10, depth:I
    :cond_5
    :goto_1
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v10, :cond_2

    .line 99
    :cond_6
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 100
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 101
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/DBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Lcom/lx/launcher8/R$styleable;->Cell:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 103
    .local v4, a:Landroid/content/res/TypedArray;
    const/16 v19, 0x8

    const v20, 0x38001

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 104
    .local v9, cellType:I
    const-string v19, "cellType"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v19, "title"

    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v19, "cellX"

    const/16 v20, 0x4

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v19, "cellY"

    const/16 v20, 0x5

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v19, "spanX"

    const/16 v20, 0x6

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v19, "spanY"

    const/16 v20, 0x7

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v19, "textColor"

    const/16 v20, 0x9

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v19, "backColor"

    const/16 v20, 0xa

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v19, "gravity"

    const/16 v20, 0xb

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    const-string v19, "widgetId"

    const/16 v20, 0xc

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v19, "alpha"

    const v20, 0xffff

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 116
    .local v12, iconPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/DBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 121
    .local v7, bt:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7

    .line 122
    invoke-static {v7}, Lcom/lx/launcher8/bean/ItemCell;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 123
    .local v6, b:[B
    const-string v19, "iconType"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v19, "icon"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 125
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    .end local v6           #b:[B
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v13, v1}, Lcom/lx/launcher8/db/DBHelper;->addCompone(Landroid/content/res/TypedArray;Landroid/content/Intent;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v14

    .line 131
    .local v14, itStr:Ljava/lang/String;
    const-string v19, "intent"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    const-string v19, "cell"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 134
    add-int/lit8 v8, v8, 0x1

    .line 135
    and-int/lit16 v0, v9, 0xfff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    goto/16 :goto_1

    .line 140
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/DBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "cell_time"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/app/common/utils/UPreference;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 127
    .end local v14           #itStr:Ljava/lang/String;
    :cond_7
    const-string v19, "iconType"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v19, "iconRes"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 137
    .restart local v14       #itStr:Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/DBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "cell_lock"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/app/common/utils/UPreference;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 143
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/DBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "cell_gallery"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/app/common/utils/UPreference;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 146
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/db/DBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "cell_contact"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/app/common/utils/UPreference;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "database"

    .prologue
    .line 74
    invoke-static {p1}, Lcom/lx/launcher8/db/DBCell;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    invoke-static {p1}, Lcom/lx/launcher8/db/DBApp;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/lx/launcher8/db/DBHelper;->loadDefaultCell(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 79
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 67
    packed-switch p2, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 69
    :pswitch_0
    invoke-static {p1}, Lcom/lx/launcher8/db/DBCell;->updateTableIcon(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
