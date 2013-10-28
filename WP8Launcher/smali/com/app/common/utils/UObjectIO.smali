.class public Lcom/app/common/utils/UObjectIO;
.super Ljava/lang/Object;
.source "UObjectIO.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .parameter "absFileName"

    .prologue
    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    :cond_0
    const/4 v2, 0x0

    .line 72
    :goto_0
    return-object v2

    .line 62
    :cond_1
    const/4 v2, 0x0

    .line 64
    .local v2, obj:Ljava/lang/Object;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, is:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    .local v3, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 67
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 68
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UObjectIO read object from file error,msg "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveObject(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 10
    .parameter "object"
    .parameter "absFileName"

    .prologue
    const/4 v7, 0x0

    .line 28
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v7

    .line 31
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, parentPath:Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/app/common/utils/UFile;->openOrCreatDir(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 35
    :cond_2
    const/4 v4, 0x0

    .line 36
    .local v4, os:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 38
    .local v2, oos:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    .end local v4           #os:Ljava/io/FileOutputStream;
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 40
    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .local v3, oos:Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 42
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 50
    const/4 v7, 0x1

    goto :goto_0

    .line 43
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v2       #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "UObjectIO save object not found file,msg "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 47
    .local v0, e:Ljava/io/IOException;
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "UObjectIO save object error,msg "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #oos:Ljava/io/ObjectOutputStream;
    move-object v4, v5

    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 43
    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #oos:Ljava/io/ObjectOutputStream;
    move-object v4, v5

    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
