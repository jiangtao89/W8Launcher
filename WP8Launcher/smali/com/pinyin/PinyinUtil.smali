.class public Lcom/pinyin/PinyinUtil;
.super Ljava/lang/Object;
.source "PinyinUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toPinyin(Landroid/content/Context;C)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v5, 0x0

    .line 44
    const/16 v6, 0x41

    if-lt p1, v6, :cond_1

    const/16 v6, 0x5a

    if-gt p1, v6, :cond_1

    .line 45
    add-int/lit8 v5, p1, 0x20

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 73
    :cond_0
    :goto_0
    return-object v5

    .line 47
    :cond_1
    const/16 v6, 0x61

    if-lt p1, v6, :cond_2

    const/16 v6, 0x7a

    if-gt p1, v6, :cond_2

    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 50
    :cond_2
    const/16 v6, 0x3007

    if-ne p1, v6, :cond_3

    const-string v5, "ling"

    goto :goto_0

    .line 51
    :cond_3
    int-to-double v6, p1

    const-wide/high16 v8, 0x4010

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_0

    const v6, 0x9fa5

    if-gt p1, v6, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, is:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-static {p0}, Lcom/pinyin/PinyinSource;->getFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    const-string v7, "r"

    invoke-direct {v2, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 57
    .end local v1           #is:Ljava/io/RandomAccessFile;
    .local v2, is:Ljava/io/RandomAccessFile;
    add-int/lit16 v6, p1, -0x4e00

    mul-int/lit8 v6, v6, 0x6

    int-to-long v3, v6

    .line 58
    .local v3, sp:J
    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 59
    const/4 v6, 0x6

    new-array v0, v6, [B

    .line 60
    .local v0, buf:[B
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 61
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v5

    .line 68
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v6

    goto :goto_0

    .line 62
    .end local v0           #buf:[B
    .end local v2           #is:Ljava/io/RandomAccessFile;
    .end local v3           #sp:J
    .restart local v1       #is:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    .line 68
    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 69
    :catch_2
    move-exception v6

    goto :goto_0

    .line 64
    :catch_3
    move-exception v6

    .line 68
    :goto_2
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 69
    :catch_4
    move-exception v6

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v5

    .line 68
    :goto_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 72
    :cond_4
    :goto_4
    throw v5

    .line 69
    :catch_5
    move-exception v6

    goto :goto_4

    .line 66
    .end local v1           #is:Ljava/io/RandomAccessFile;
    .restart local v2       #is:Ljava/io/RandomAccessFile;
    .restart local v3       #sp:J
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #is:Ljava/io/RandomAccessFile;
    .restart local v1       #is:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 64
    .end local v1           #is:Ljava/io/RandomAccessFile;
    .restart local v2       #is:Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v6

    move-object v1, v2

    .end local v2           #is:Ljava/io/RandomAccessFile;
    .restart local v1       #is:Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 62
    .end local v1           #is:Ljava/io/RandomAccessFile;
    .restart local v2       #is:Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v6

    move-object v1, v2

    .end local v2           #is:Ljava/io/RandomAccessFile;
    .restart local v1       #is:Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public static toPinyin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "hanzi"

    .prologue
    .line 84
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 85
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 87
    .local v3, is:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-static {p0}, Lcom/pinyin/PinyinSource;->getFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v4, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 88
    .end local v3           #is:Ljava/io/RandomAccessFile;
    .local v4, is:Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-lt v2, v8, :cond_1

    .line 112
    if-eqz v4, :cond_8

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 117
    .end local v2           #i:I
    .end local v4           #is:Ljava/io/RandomAccessFile;
    .restart local v3       #is:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 89
    .end local v3           #is:Ljava/io/RandomAccessFile;
    .restart local v2       #i:I
    .restart local v4       #is:Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 90
    .local v1, ch:C
    const/16 v8, 0x41

    if-lt v1, v8, :cond_3

    const/16 v8, 0x5a

    if-gt v1, v8, :cond_3

    .line 91
    add-int/lit8 v8, v1, 0x20

    int-to-char v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_3
    const/16 v8, 0x61

    if-lt v1, v8, :cond_4

    const/16 v8, 0x7a

    if-gt v1, v8, :cond_4

    .line 95
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 108
    .end local v1           #ch:C
    :catch_0
    move-exception v8

    move-object v3, v4

    .line 112
    .end local v2           #i:I
    .end local v4           #is:Ljava/io/RandomAccessFile;
    .restart local v3       #is:Ljava/io/RandomAccessFile;
    :goto_3
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 113
    :catch_1
    move-exception v8

    goto :goto_1

    .line 98
    .end local v3           #is:Ljava/io/RandomAccessFile;
    .restart local v1       #ch:C
    .restart local v2       #i:I
    .restart local v4       #is:Ljava/io/RandomAccessFile;
    :cond_4
    const/16 v8, 0x3007

    if-ne v1, v8, :cond_6

    .line 99
    :try_start_5
    const-string v8, "ling"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 110
    .end local v1           #ch:C
    :catchall_0
    move-exception v8

    move-object v3, v4

    .line 112
    .end local v2           #i:I
    .end local v4           #is:Ljava/io/RandomAccessFile;
    .restart local v3       #is:Ljava/io/RandomAccessFile;
    :goto_4
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 116
    :cond_5
    :goto_5
    throw v8

    .line 100
    .end local v3           #is:Ljava/io/RandomAccessFile;
    .restart local v1       #ch:C
    .restart local v2       #i:I
    .restart local v4       #is:Ljava/io/RandomAccessFile;
    :cond_6
    const/16 v8, 0x4e00

    if-ge v1, v8, :cond_7

    const v8, 0x9fa5

    if-gt v1, v8, :cond_2

    .line 101
    :cond_7
    add-int/lit16 v8, v1, -0x4e00

    mul-int/lit8 v8, v8, 0x6

    int-to-long v6, v8

    .line 102
    .local v6, sp:J
    :try_start_7
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 103
    const/4 v8, 0x6

    new-array v0, v8, [B

    .line 104
    .local v0, buf:[B
    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 105
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 113
    .end local v0           #buf:[B
    .end local v1           #ch:C
    .end local v6           #sp:J
    :catch_2
    move-exception v8

    move-object v3, v4

    .end local v4           #is:Ljava/io/RandomAccessFile;
    .restart local v3       #is:Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v2           #i:I
    :catch_3
    move-exception v9

    goto :goto_5

    .line 110
    :catchall_1
    move-exception v8

    goto :goto_4

    .line 108
    :catch_4
    move-exception v8

    goto :goto_3

    .end local v3           #is:Ljava/io/RandomAccessFile;
    .restart local v2       #i:I
    .restart local v4       #is:Ljava/io/RandomAccessFile;
    :cond_8
    move-object v3, v4

    .end local v4           #is:Ljava/io/RandomAccessFile;
    .restart local v3       #is:Ljava/io/RandomAccessFile;
    goto :goto_1
.end method
