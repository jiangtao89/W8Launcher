.class public Lcom/lx/launcher8/db/DBCell;
.super Ljava/lang/Object;
.source "DBCell.java"


# static fields
.field public static final ALPHA:Ljava/lang/String; = "alpha"

.field public static final APPNAME:Ljava/lang/String; = "appName"

.field public static final BACKCOLOR:Ljava/lang/String; = "backColor"

.field public static final CELLTYPE:Ljava/lang/String; = "cellType"

.field public static final CELLX:Ljava/lang/String; = "cellX"

.field public static final CELLY:Ljava/lang/String; = "cellY"

.field public static final CONTAINER:Ljava/lang/String; = "container"

.field public static final GRAVITY:Ljava/lang/String; = "gravity"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final ICON2:Ljava/lang/String; = "icon2"

.field public static final ICONRES:Ljava/lang/String; = "iconRes"

.field public static final ICONTYPE:Ljava/lang/String; = "iconType"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final SPANX:Ljava/lang/String; = "spanX"

.field public static final SPANY:Ljava/lang/String; = "spanY"

.field static final TABLE_CELL:Ljava/lang/String; = "cell"

.field public static final TEXTCOLOR:Ljava/lang/String; = "textColor"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final WIDGETID:Ljava/lang/String; = "widgetId"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "database"

    .prologue
    .line 40
    const-string v0, "create table if not exists cell (_id INTEGER PRIMARY KEY,title TEXT,appName TEXT,intent TEXT,cellX INTERGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,cellType INTEGER,container INTEGER default -1,widgetId INTEGER NOT NULL DEFAULT -1,gravity INTEGER,textColor INTEGER,backColor INTEGER,alpha INTEGER,iconType INTEGER,icon BLOB,icon2 BLOB,iconRes TEXT)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private insertFolder(Landroid/database/sqlite/SQLiteDatabase;Lcom/lx/launcher8/bean/FolderCell;Landroid/content/ContentValues;J)Z
    .locals 4
    .parameter "db"
    .parameter "fc"
    .parameter "value"
    .parameter "id"

    .prologue
    .line 67
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_0

    iget-object v1, p2, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 74
    :goto_0
    return v1

    .line 68
    :cond_1
    iget-object v1, p2, Lcom/lx/launcher8/bean/FolderCell;->contains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 74
    const/4 v1, 0x1

    goto :goto_0

    .line 68
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/bean/AppCell;

    .line 69
    .local v0, ac:Lcom/lx/launcher8/bean/AppCell;
    iput-wide p4, v0, Lcom/lx/launcher8/bean/AppCell;->container:J

    .line 70
    invoke-virtual {p3}, Landroid/content/ContentValues;->clear()V

    .line 71
    invoke-virtual {v0, p3}, Lcom/lx/launcher8/bean/AppCell;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 72
    const-string v2, "cell"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lx/launcher8/bean/AppCell;->id:J

    goto :goto_1
.end method

.method public static updateTableIcon(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "database"

    .prologue
    .line 46
    const-string v0, "ALTER TABLE cell ADD COLUMN icon2 BLOB"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public bulkReplase(Ljava/util/ArrayList;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/ItemCell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/ItemCell;>;"
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 162
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 163
    const-string v1, "cell"

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v1, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 164
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    .line 165
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v4, value:Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 174
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    const/4 v1, 0x1

    goto :goto_0

    .line 166
    :cond_2
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lx/launcher8/bean/ItemCell;

    .line 167
    .local v7, cell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 168
    invoke-virtual {v7, v4}, Lcom/lx/launcher8/bean/ItemCell;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 169
    const-string v1, "cell"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 170
    .local v5, id:J
    instance-of v1, v7, Lcom/lx/launcher8/bean/FolderCell;

    if-eqz v1, :cond_1

    .line 171
    move-object v0, v7

    check-cast v0, Lcom/lx/launcher8/bean/FolderCell;

    move-object v3, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/lx/launcher8/db/DBCell;->insertFolder(Landroid/database/sqlite/SQLiteDatabase;Lcom/lx/launcher8/bean/FolderCell;Landroid/content/ContentValues;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 175
    .end local v4           #value:Landroid/content/ContentValues;
    .end local v5           #id:J
    .end local v7           #cell:Lcom/lx/launcher8/bean/ItemCell;
    :catchall_0
    move-exception v1

    .line 176
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 177
    throw v1
.end method

.method public bulkUpdate(Ljava/util/List;)I
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/bean/ItemCell;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/bean/ItemCell;>;"
    const/4 v5, 0x0

    .line 87
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    .line 105
    :goto_0
    return v3

    .line 88
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 89
    .local v3, size:I
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 91
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v4, value:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 93
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 94
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 95
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/bean/ItemCell;

    .line 96
    .local v2, item:Lcom/lx/launcher8/bean/ItemCell;
    invoke-virtual {v2, v4}, Lcom/lx/launcher8/bean/ItemCell;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 97
    const-string v6, "cell"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-wide v10, v2, Lcom/lx/launcher8/bean/ItemCell;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-gez v6, :cond_2

    .line 103
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v3, v5

    .line 98
    goto :goto_0

    .line 93
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    .end local v1           #i:I
    .end local v2           #item:Lcom/lx/launcher8/bean/ItemCell;
    .end local v4           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    .line 103
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 104
    throw v5
.end method

.method public delete(J)Z
    .locals 7
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 114
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "cell"

    const-string v4, "_id=?"

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteFolderItems(J)I
    .locals 6
    .parameter "containerId"

    .prologue
    .line 109
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 110
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "cell"

    const-string v2, "container=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public insert(Lcom/lx/launcher8/bean/ItemCell;)J
    .locals 8
    .parameter "item"

    .prologue
    .line 53
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v3, value:Landroid/content/ContentValues;
    invoke-virtual {p1, v3}, Lcom/lx/launcher8/bean/ItemCell;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 55
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 56
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v0, "cell"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 57
    .local v4, result:J
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 58
    iput-wide v4, p1, Lcom/lx/launcher8/bean/ItemCell;->id:J

    .line 59
    instance-of v0, p1, Lcom/lx/launcher8/bean/FolderCell;

    if-eqz v0, :cond_0

    move-object v2, p1

    .line 60
    check-cast v2, Lcom/lx/launcher8/bean/FolderCell;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lx/launcher8/db/DBCell;->insertFolder(Landroid/database/sqlite/SQLiteDatabase;Lcom/lx/launcher8/bean/FolderCell;Landroid/content/ContentValues;J)Z

    .line 63
    :cond_0
    return-wide v4
.end method

.method public queryAll()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 119
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select * from cell order by cellY ASC"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryReverse(J)Ljava/util/ArrayList;
    .locals 13
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v11, recode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 132
    .local v10, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "cell"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "intent"

    aput-object v5, v3, v4

    const-string v4, "container!=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 133
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    .line 151
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v11

    .line 134
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 135
    .local v12, str:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    .end local v12           #str:Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 151
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_3
    throw v1

    .line 141
    :cond_4
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "cell"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "intent"

    aput-object v5, v3, v4

    const-string v4, "container=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 142
    :cond_5
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_6

    .line 151
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 143
    :cond_6
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 144
    .restart local v12       #str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query contain string "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;)V

    .line 145
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 147
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public update(Lcom/lx/launcher8/bean/ItemCell;)I
    .locals 9
    .parameter "item"

    .prologue
    .line 79
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v2, value:Landroid/content/ContentValues;
    invoke-virtual {p1, v2}, Lcom/lx/launcher8/bean/ItemCell;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 81
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 82
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "cell"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p1, Lcom/lx/launcher8/bean/ItemCell;->id:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 83
    .local v1, result:I
    return v1
.end method
