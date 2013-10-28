.class public Lcom/lx/launcher8/db/DBApp;
.super Ljava/lang/Object;
.source "DBApp.java"


# static fields
.field public static final APPPATH:Ljava/lang/String; = "appPath"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final ISSYSTEM:Ljava/lang/String; = "isSystem"

.field public static final LAUNCHCOUNT:Ljava/lang/String; = "launchCount"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PKG:Ljava/lang/String; = "pkg"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final TABLE_APP:Ljava/lang/String; = "app"

.field public static final VISIBLE:Ljava/lang/String; = "visible"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private app2Values(Lcom/anall/app/bean/AppInfo;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 3
    .parameter "info"
    .parameter "value"

    .prologue
    .line 31
    if-nez p2, :cond_0

    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 34
    .restart local p2
    :goto_0
    const-string v0, "intent"

    iget-object v1, p1, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "pkg"

    iget-object v1, p1, Lcom/anall/app/bean/AppInfo;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "launchCount"

    iget v1, p1, Lcom/anall/app/bean/AppInfo;->lauchCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    const-string v0, "visible"

    iget v1, p1, Lcom/anall/app/bean/AppInfo;->isVisible:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    return-object p2

    .line 32
    :cond_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    goto :goto_0
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "database"

    .prologue
    .line 24
    const-string v0, "create table if not exists app (_id INTEGER PRIMARY KEY,name TEXT,pkg TEXT,intent TEXT,appPath TEXT,size INTEGER DEFAULT 0,isSystem INTEGER DEFAULT 0,visible INTEGER DEFAULT 0,launchCount INTEGER DEFAULT 0)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public bulkInsert(Ljava/util/ArrayList;)I
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 101
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .local v5, value:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 103
    .local v0, count:I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 105
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 113
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 117
    return v0

    .line 105
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anall/app/bean/AppInfo;

    .line 106
    .local v4, info:Lcom/anall/app/bean/AppInfo;
    invoke-direct {p0, v4, v5}, Lcom/lx/launcher8/db/DBApp;->app2Values(Lcom/anall/app/bean/AppInfo;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 107
    const-string v7, "app"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 108
    .local v2, id:J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-ltz v7, :cond_0

    .line 109
    iput-wide v2, v4, Lcom/anall/app/bean/AppInfo;->id:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v2           #id:J
    .end local v4           #info:Lcom/anall/app/bean/AppInfo;
    :catchall_0
    move-exception v6

    .line 115
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 116
    throw v6
.end method

.method public bulkRemove(Ljava/util/ArrayList;)I
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    .line 122
    :cond_1
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 123
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v5, value:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 125
    .local v0, count:I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 127
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 135
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 127
    :cond_3
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anall/app/bean/AppInfo;

    .line 128
    .local v4, info:Lcom/anall/app/bean/AppInfo;
    iget-wide v7, v4, Lcom/anall/app/bean/AppInfo;->id:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 129
    invoke-direct {p0, v4, v5}, Lcom/lx/launcher8/db/DBApp;->app2Values(Lcom/anall/app/bean/AppInfo;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 130
    const-string v7, "app"

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-wide v11, v4, Lcom/anall/app/bean/AppInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    int-to-long v2, v7

    .line 131
    .local v2, id:J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_2

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    .end local v2           #id:J
    .end local v4           #info:Lcom/anall/app/bean/AppInfo;
    :catchall_0
    move-exception v6

    .line 137
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 138
    throw v6
.end method

.method public bulkUpdate(Ljava/util/ArrayList;)I
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    const/4 v0, 0x0

    .line 161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 162
    :cond_1
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 163
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .local v5, value:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 165
    .local v0, count:I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 167
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 174
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 167
    :cond_3
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anall/app/bean/AppInfo;

    .line 168
    .local v4, info:Lcom/anall/app/bean/AppInfo;
    invoke-direct {p0, v4, v5}, Lcom/lx/launcher8/db/DBApp;->app2Values(Lcom/anall/app/bean/AppInfo;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 169
    const-string v7, "app"

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-wide v11, v4, Lcom/anall/app/bean/AppInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    int-to-long v2, v7

    .line 170
    .local v2, id:J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_2

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    .end local v2           #id:J
    .end local v4           #info:Lcom/anall/app/bean/AppInfo;
    :catchall_0
    move-exception v6

    .line 176
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 177
    throw v6
.end method

.method public delete(J)Z
    .locals 7
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 143
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 145
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "app"

    const-string v4, "_id=?"

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isCached()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 44
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 46
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v4, "select count(_id) from app"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 48
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-le v4, v2, :cond_1

    .line 50
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 48
    :cond_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v2

    .line 50
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 51
    :cond_2
    throw v2
.end method

.method public queryAll()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 56
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select * from app"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public update(Lcom/anall/app/bean/AppInfo;)Z
    .locals 9
    .parameter "info"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 149
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 150
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v1, value:Landroid/content/ContentValues;
    invoke-direct {p0, p1, v1}, Lcom/lx/launcher8/db/DBApp;->app2Values(Lcom/anall/app/bean/AppInfo;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 152
    iget-wide v4, p1, Lcom/anall/app/bean/AppInfo;->id:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 153
    const-string v4, "app"

    const-string v5, "_id=?"

    new-array v6, v2, [Ljava/lang/String;

    iget-wide v7, p1, Lcom/anall/app/bean/AppInfo;->id:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 153
    goto :goto_0

    .line 155
    :cond_2
    const-string v4, "app"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/anall/app/bean/AppInfo;->id:J

    .line 156
    iget-wide v4, p1, Lcom/anall/app/bean/AppInfo;->id:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method
