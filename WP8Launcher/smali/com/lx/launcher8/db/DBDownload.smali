.class public Lcom/lx/launcher8/db/DBDownload;
.super Ljava/lang/Object;
.source "DBDownload.java"


# static fields
.field private static final TABLE_FILE:Ljava/lang/String; = "t_file"

.field private static final TABLE_FILE_PART:Ljava/lang/String; = "t_file_part"

.field private static mDBDownload:Lcom/lx/launcher8/db/DBDownload;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/lx/launcher8/db/DBDownload;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 21
    return-void
.end method

.method private checkFilePart(I)Z
    .locals 7
    .parameter "fileId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 445
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 447
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select fileId from t_file_part where fileId = ? and status = 1"

    .line 448
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 447
    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 449
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 452
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 457
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v0, sql:Ljava/lang/StringBuilder;
    const-string v1, "create table if not exists t_file("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, "fileId INTEGER PRIMARY KEY,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v1, "fileUrl VARCHAR,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v1, "fileSize INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, "loadedSize INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v1, "status INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v1, "fileName VARCHAR,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v1, "savePath VARCHAR,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v1, "title VARCHAR,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v1, "iconUrl VARCHAR,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v1, "packageName VARCHAR,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v1, "vsName VARCHAR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 475
    const-string v1, "create table if not exists t_file_part("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v1, "partId INTEGER PRIMARY KEY,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v1, "fileId INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v1, "startPos INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string v1, "endPos INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string v1, "fileSize INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string v1, "loadedSize INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v1, "number INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v1, "status INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v1, "fileName VARCHAR,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v1, "savePath VARCHAR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 489
    const-string v1, "update t_file set status = ? where status = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 490
    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 489
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v0           #sql:Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/lx/launcher8/db/DBDownload;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/lx/launcher8/db/DBDownload;->mDBDownload:Lcom/lx/launcher8/db/DBDownload;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/lx/launcher8/db/DBDownload;

    invoke-direct {v0}, Lcom/lx/launcher8/db/DBDownload;-><init>()V

    sput-object v0, Lcom/lx/launcher8/db/DBDownload;->mDBDownload:Lcom/lx/launcher8/db/DBDownload;

    .line 27
    :cond_0
    sget-object v0, Lcom/lx/launcher8/db/DBDownload;->mDBDownload:Lcom/lx/launcher8/db/DBDownload;

    return-object v0
.end method


# virtual methods
.method public delete(I)V
    .locals 5
    .parameter "fileId"

    .prologue
    .line 414
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 417
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "delete from t_file where fileId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public finishFile(I)V
    .locals 5
    .parameter "fileId"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/lx/launcher8/db/DBDownload;->checkFilePart(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 233
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "update t_file set status = 8 where fileId = ?"

    .line 234
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    const-string v1, "delete from t_file_part where fileId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public finishFilePart(I)V
    .locals 5
    .parameter "partId"

    .prologue
    .line 348
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 350
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "update t_file_part set status = 1 where partId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getFileInfo(I)Lcom/lx/launcher8/download/FileSeed;
    .locals 10
    .parameter "fileId"

    .prologue
    .line 89
    const/4 v8, 0x0

    .line 90
    .local v8, c:Landroid/database/Cursor;
    new-instance v9, Lcom/lx/launcher8/download/FileSeed;

    invoke-direct {v9}, Lcom/lx/launcher8/download/FileSeed;-><init>()V

    .line 91
    .local v9, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 94
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "t_file"

    const/4 v2, 0x0

    const-string v3, "fileId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 95
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "fileId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setFileId(I)V

    .line 97
    const-string v1, "fileUrl"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setFileUrl(Ljava/lang/String;)V

    .line 98
    const-string v1, "fileSize"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lcom/lx/launcher8/download/FileSeed;->setFileSize(J)V

    .line 99
    const-string v1, "loadedSize"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lcom/lx/launcher8/download/FileSeed;->setLoadedSize(J)V

    .line 100
    const-string v1, "status"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 101
    const-string v1, "savePath"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setSavePath(Ljava/lang/String;)V

    .line 102
    const-string v1, "fileName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setFileName(Ljava/lang/String;)V

    .line 103
    const-string v1, "title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setTitle(Ljava/lang/String;)V

    .line 104
    const-string v1, "iconUrl"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setIconUrl(Ljava/lang/String;)V

    .line 105
    const-string v1, "packageName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setPkName(Ljava/lang/String;)V

    .line 106
    const-string v1, "vsName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setVsName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    if-eqz v8, :cond_1

    .line 111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_1
    :goto_0
    return-object v9

    .line 108
    :catch_0
    move-exception v1

    .line 110
    if-eqz v8, :cond_1

    .line 111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v1

    .line 110
    if-eqz v8, :cond_2

    .line 111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_2
    throw v1
.end method

.method public getFileInfo(Ljava/lang/String;)Lcom/lx/launcher8/download/FileSeed;
    .locals 10
    .parameter "fileUrl"

    .prologue
    .line 54
    const/4 v8, 0x0

    .line 55
    .local v8, c:Landroid/database/Cursor;
    new-instance v9, Lcom/lx/launcher8/download/FileSeed;

    invoke-direct {v9}, Lcom/lx/launcher8/download/FileSeed;-><init>()V

    .line 56
    .local v9, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "t_file"

    const/4 v2, 0x0

    const-string v3, "fileUrl = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 60
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "fileId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setFileId(I)V

    .line 62
    const-string v1, "fileUrl"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setFileUrl(Ljava/lang/String;)V

    .line 63
    const-string v1, "fileSize"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lcom/lx/launcher8/download/FileSeed;->setFileSize(J)V

    .line 64
    const-string v1, "loadedSize"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lcom/lx/launcher8/download/FileSeed;->setLoadedSize(J)V

    .line 65
    const-string v1, "status"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 66
    const-string v1, "savePath"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setSavePath(Ljava/lang/String;)V

    .line 67
    const-string v1, "fileName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setFileName(Ljava/lang/String;)V

    .line 68
    const-string v1, "title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setTitle(Ljava/lang/String;)V

    .line 69
    const-string v1, "iconUrl"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setIconUrl(Ljava/lang/String;)V

    .line 70
    const-string v1, "packageName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setPkName(Ljava/lang/String;)V

    .line 71
    const-string v1, "vsName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lx/launcher8/download/FileSeed;->setVsName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    if-eqz v8, :cond_1

    .line 76
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_1
    :goto_0
    return-object v9

    .line 73
    :catch_0
    move-exception v1

    .line 75
    if-eqz v8, :cond_1

    .line 76
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v1

    .line 75
    if-eqz v8, :cond_2

    .line 76
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_2
    throw v1
.end method

.method public getFileList(I)Ljava/util/List;
    .locals 23
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/download/FileSeed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    const/4 v9, 0x0

    .line 363
    .local v9, c:Landroid/database/Cursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v16, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/download/FileSeed;>;"
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 367
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p1, :cond_1

    .line 368
    :try_start_0
    const-string v2, "t_file"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 373
    :goto_0
    const-string v2, "fileId"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 374
    .local v10, fileIdIndex:I
    const-string v2, "fileName"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 375
    .local v11, fileNameIndex:I
    const-string v2, "savePath"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 376
    .local v19, savePathIndex:I
    const-string v2, "fileSize"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 377
    .local v13, fileSizeIndex:I
    const-string v2, "loadedSize"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 378
    .local v17, loadedSizeIndex:I
    const-string v2, "status"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 379
    .local v20, statusIndex:I
    const-string v2, "fileUrl"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 380
    .local v14, fileUrlIndex:I
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 381
    .local v21, titleIndex:I
    const-string v2, "iconUrl"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 382
    .local v15, iconUrlIndex:I
    const-string v2, "packageName"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 383
    .local v18, packageNameIndex:I
    const-string v2, "vsName"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 385
    .local v22, vsNameIndex:I
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 401
    if-eqz v9, :cond_0

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 405
    :cond_0
    return-object v16

    .line 370
    .end local v10           #fileIdIndex:I
    .end local v11           #fileNameIndex:I
    .end local v13           #fileSizeIndex:I
    .end local v14           #fileUrlIndex:I
    .end local v15           #iconUrlIndex:I
    .end local v17           #loadedSizeIndex:I
    .end local v18           #packageNameIndex:I
    .end local v19           #savePathIndex:I
    .end local v20           #statusIndex:I
    .end local v21           #titleIndex:I
    .end local v22           #vsNameIndex:I
    :cond_1
    :try_start_1
    const-string v2, "t_file"

    const/4 v3, 0x0

    const-string v4, "status = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 371
    const/4 v8, 0x0

    .line 370
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 386
    .restart local v10       #fileIdIndex:I
    .restart local v11       #fileNameIndex:I
    .restart local v13       #fileSizeIndex:I
    .restart local v14       #fileUrlIndex:I
    .restart local v15       #iconUrlIndex:I
    .restart local v17       #loadedSizeIndex:I
    .restart local v18       #packageNameIndex:I
    .restart local v19       #savePathIndex:I
    .restart local v20       #statusIndex:I
    .restart local v21       #titleIndex:I
    .restart local v22       #vsNameIndex:I
    :cond_2
    new-instance v12, Lcom/lx/launcher8/download/FileSeed;

    invoke-direct {v12}, Lcom/lx/launcher8/download/FileSeed;-><init>()V

    .line 387
    .local v12, fileSeed:Lcom/lx/launcher8/download/FileSeed;
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/lx/launcher8/download/FileSeed;->setFileId(I)V

    .line 388
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lx/launcher8/download/FileSeed;->setFileName(Ljava/lang/String;)V

    .line 389
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lx/launcher8/download/FileSeed;->setSavePath(Ljava/lang/String;)V

    .line 390
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/lx/launcher8/download/FileSeed;->setFileSize(J)V

    .line 391
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/lx/launcher8/download/FileSeed;->setLoadedSize(J)V

    .line 392
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/lx/launcher8/download/FileSeed;->setState(I)V

    .line 393
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lx/launcher8/download/FileSeed;->setFileUrl(Ljava/lang/String;)V

    .line 394
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lx/launcher8/download/FileSeed;->setTitle(Ljava/lang/String;)V

    .line 395
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lx/launcher8/download/FileSeed;->setIconUrl(Ljava/lang/String;)V

    .line 396
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lx/launcher8/download/FileSeed;->setPkName(Ljava/lang/String;)V

    .line 397
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lx/launcher8/download/FileSeed;->setVsName(Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 400
    .end local v10           #fileIdIndex:I
    .end local v11           #fileNameIndex:I
    .end local v12           #fileSeed:Lcom/lx/launcher8/download/FileSeed;
    .end local v13           #fileSizeIndex:I
    .end local v14           #fileUrlIndex:I
    .end local v15           #iconUrlIndex:I
    .end local v17           #loadedSizeIndex:I
    .end local v18           #packageNameIndex:I
    .end local v19           #savePathIndex:I
    .end local v20           #statusIndex:I
    .end local v21           #titleIndex:I
    .end local v22           #vsNameIndex:I
    :catchall_0
    move-exception v2

    .line 401
    if-eqz v9, :cond_3

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_3
    throw v2
.end method

.method public getFilePartInfo(I)Lcom/lx/launcher8/download/FilePart;
    .locals 11
    .parameter "partId"

    .prologue
    .line 294
    const/4 v8, 0x0

    .line 295
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 296
    .local v9, part:Lcom/lx/launcher8/download/FilePart;
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 299
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "t_file_part"

    const/4 v2, 0x0

    const-string v3, "partId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    .line 300
    const/4 v6, 0x0

    const-string v7, ""

    .line 299
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 301
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    new-instance v10, Lcom/lx/launcher8/download/FilePart;

    invoke-direct {v10}, Lcom/lx/launcher8/download/FilePart;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local v9           #part:Lcom/lx/launcher8/download/FilePart;
    .local v10, part:Lcom/lx/launcher8/download/FilePart;
    :try_start_1
    const-string v1, "partId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/lx/launcher8/download/FilePart;->setPartId(I)V

    .line 304
    const-string v1, "fileName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lx/launcher8/download/FilePart;->setFileName(Ljava/lang/String;)V

    .line 305
    const-string v1, "savePath"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/lx/launcher8/download/FilePart;->setSavePath(Ljava/lang/String;)V

    .line 306
    const-string v1, "fileId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/lx/launcher8/download/FilePart;->setFileId(I)V

    .line 307
    const-string v1, "startPos"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Lcom/lx/launcher8/download/FilePart;->setStartPos(J)V

    .line 308
    const-string v1, "endPos"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Lcom/lx/launcher8/download/FilePart;->setEndPos(J)V

    .line 309
    const-string v1, "fileSize"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Lcom/lx/launcher8/download/FilePart;->setFileSize(J)V

    .line 310
    const-string v1, "number"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/lx/launcher8/download/FilePart;->setNumber(I)V

    .line 311
    const-string v1, "loadedSize"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Lcom/lx/launcher8/download/FilePart;->setLoadedSize(J)V

    .line 312
    const-string v1, "status"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/lx/launcher8/download/FilePart;->setStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v10

    .line 315
    .end local v10           #part:Lcom/lx/launcher8/download/FilePart;
    .restart local v9       #part:Lcom/lx/launcher8/download/FilePart;
    :cond_0
    if-eqz v8, :cond_1

    .line 316
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_1
    return-object v9

    .line 314
    :catchall_0
    move-exception v1

    .line 315
    :goto_0
    if-eqz v8, :cond_2

    .line 316
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_2
    throw v1

    .line 314
    .end local v9           #part:Lcom/lx/launcher8/download/FilePart;
    .restart local v10       #part:Lcom/lx/launcher8/download/FilePart;
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10           #part:Lcom/lx/launcher8/download/FilePart;
    .restart local v9       #part:Lcom/lx/launcher8/download/FilePart;
    goto :goto_0
.end method

.method public getFilePartList(I)Ljava/util/List;
    .locals 22
    .parameter "fileId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/download/FilePart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    const/4 v9, 0x0

    .line 248
    .local v9, c:Landroid/database/Cursor;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v14, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/download/FilePart;>;"
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 252
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "t_file_part"

    const/4 v3, 0x0

    const-string v4, "fileId = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    .line 253
    const/4 v7, 0x0

    const-string v8, " number asc"

    .line 252
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 254
    const-string v2, "partId"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 255
    .local v18, partIdIndex:I
    const-string v2, "fileName"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 256
    .local v12, fileNameIndex:I
    const-string v2, "savePath"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 257
    .local v19, savePathIndex:I
    const-string v2, "fileId"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 258
    .local v11, fileIdIndex:I
    const-string v2, "startPos"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 259
    .local v20, startPosIndex:I
    const-string v2, "fileSize"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 260
    .local v13, fileSizeIndex:I
    const-string v2, "endPos"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 261
    .local v10, endPosIndex:I
    const-string v2, "loadedSize"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 262
    .local v15, loadedSizeIndex:I
    const-string v2, "number"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 263
    .local v16, numberIndex:I
    const-string v2, "status"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 265
    .local v21, statusIndex:I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 280
    if-eqz v9, :cond_0

    .line 281
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_0
    return-object v14

    .line 266
    :cond_1
    :try_start_1
    new-instance v17, Lcom/lx/launcher8/download/FilePart;

    invoke-direct/range {v17 .. v17}, Lcom/lx/launcher8/download/FilePart;-><init>()V

    .line 267
    .local v17, part:Lcom/lx/launcher8/download/FilePart;
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/download/FilePart;->setPartId(I)V

    .line 268
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/download/FilePart;->setFileName(Ljava/lang/String;)V

    .line 269
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/download/FilePart;->setSavePath(Ljava/lang/String;)V

    .line 270
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/download/FilePart;->setFileId(I)V

    .line 271
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/lx/launcher8/download/FilePart;->setStartPos(J)V

    .line 272
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/lx/launcher8/download/FilePart;->setEndPos(J)V

    .line 273
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/lx/launcher8/download/FilePart;->setFileSize(J)V

    .line 274
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/download/FilePart;->setNumber(I)V

    .line 275
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/lx/launcher8/download/FilePart;->setLoadedSize(J)V

    .line 276
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/download/FilePart;->setStatus(I)V

    .line 277
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    .end local v10           #endPosIndex:I
    .end local v11           #fileIdIndex:I
    .end local v12           #fileNameIndex:I
    .end local v13           #fileSizeIndex:I
    .end local v15           #loadedSizeIndex:I
    .end local v16           #numberIndex:I
    .end local v17           #part:Lcom/lx/launcher8/download/FilePart;
    .end local v18           #partIdIndex:I
    .end local v19           #savePathIndex:I
    .end local v20           #startPosIndex:I
    .end local v21           #statusIndex:I
    :catchall_0
    move-exception v2

    .line 280
    if-eqz v9, :cond_2

    .line 281
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_2
    throw v2
.end method

.method public insert(Lcom/lx/launcher8/download/FilePart;)V
    .locals 5
    .parameter "part"

    .prologue
    .line 328
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 329
    .local v0, cv:Landroid/content/ContentValues;
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 331
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 332
    const-string v2, "fileName"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FilePart;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v2, "savePath"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FilePart;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v2, "fileId"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FilePart;->getFileId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v2, "startPos"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FilePart;->getStartPos()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    const-string v2, "endPos"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FilePart;->getEndPos()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 337
    const-string v2, "fileSize"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FilePart;->getFileSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 338
    const-string v2, "loadedSize"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FilePart;->getLoadedSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    const-string v2, "number"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FilePart;->getNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    const-string v2, "status"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FilePart;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string v2, "t_file_part"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 342
    return-void
.end method

.method public insert(Lcom/lx/launcher8/download/FileSeed;)V
    .locals 6
    .parameter "fileSeed"

    .prologue
    .line 123
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v0, cv:Landroid/content/ContentValues;
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 127
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "delete from t_file where fileUrl = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 132
    const-string v2, "fileUrl"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "fileSize"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getFileSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string v2, "loadedSize"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getLoadedSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    const-string v2, "status"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v2, "fileName"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v2, "savePath"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "iconUrl"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "packageName"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getPkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "vsName"

    invoke-virtual {p1}, Lcom/lx/launcher8/download/FileSeed;->getVsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "t_file"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 143
    return-void

    .line 128
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isExist(Ljava/lang/String;)Z
    .locals 6
    .parameter "fileUrl"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 39
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select fileId from t_file where fileUrl = ?"

    .line 40
    new-array v5, v2, [Ljava/lang/String;

    aput-object p1, v5, v3

    .line 39
    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 41
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public reload(I)V
    .locals 5
    .parameter "fileId"

    .prologue
    .line 428
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 431
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "update t_file set status = ?, fileSize = 0, loadedSize = 0 where fileId = ?"

    .line 432
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 431
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    const-string v1, "delete from t_file_part where fileId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateFileSize(II)V
    .locals 8
    .parameter "fileId"
    .parameter "partId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 168
    invoke-virtual {p0, p2}, Lcom/lx/launcher8/db/DBDownload;->getFilePartInfo(I)Lcom/lx/launcher8/download/FilePart;

    move-result-object v1

    .line 169
    .local v1, part:Lcom/lx/launcher8/download/FilePart;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lx/launcher8/download/FilePart;->getLoadedSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 170
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 171
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "update t_file set loadedSize = loadedSize - ? where fileId = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 172
    invoke-virtual {v1}, Lcom/lx/launcher8/download/FilePart;->getLoadedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 171
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const-string v2, "update t_file_part set loadedSize = 0 where partId = ?"

    .line 174
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 173
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void
.end method

.method public updateFileSize(IIJ)V
    .locals 6
    .parameter "fileId"
    .parameter "partId"
    .parameter "addSize"

    .prologue
    .line 187
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 189
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    :try_start_0
    const-string v2, "update t_file set loadedSize = loadedSize + ? where fileId = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 199
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 198
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const-string v2, "update t_file_part set loadedSize = loadedSize + ? where partId = ?"

    .line 201
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 200
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :goto_1
    return-void

    .line 191
    :cond_0
    const-wide/16 v2, 0xa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public updateFileSize(IJ)V
    .locals 5
    .parameter "fileId"
    .parameter "fileSize"

    .prologue
    .line 152
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "update t_file set fileSize = ? where fileId = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateState(II)V
    .locals 5
    .parameter "fileId"
    .parameter "status"

    .prologue
    .line 213
    invoke-static {}, Lcom/lx/launcher8/db/DBHelper;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 216
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "update t_file set status = ? where fileId = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v1

    goto :goto_0
.end method
