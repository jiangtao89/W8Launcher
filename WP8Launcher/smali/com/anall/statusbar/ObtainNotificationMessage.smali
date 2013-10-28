.class public Lcom/anall/statusbar/ObtainNotificationMessage;
.super Landroid/os/AsyncTask;
.source "ObtainNotificationMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ObtainNotificationMessage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/anall/statusbar/ObtainNotificationMessage;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "params"

    .prologue
    .line 25
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v2, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "dumpsys notification"

    aput-object v18, v2, v17

    .line 26
    .local v2, commands:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 27
    .local v13, process:Ljava/lang/Process;
    const/4 v3, 0x0

    .line 30
    .local v3, dataOutputStream:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    const-string v18, "su"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v13

    .line 31
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v13}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 32
    .end local v3           #dataOutputStream:Ljava/io/DataOutputStream;
    .local v4, dataOutputStream:Ljava/io/DataOutputStream;
    :try_start_1
    array-length v7, v2

    .line 33
    .local v7, length:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-lt v6, v7, :cond_1

    .line 37
    const-string v17, "exit\n"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 40
    invoke-virtual {v13}, Ljava/lang/Process;->waitFor()I

    .line 42
    const/4 v14, 0x0

    .line 43
    .local v14, reader:Ljava/io/BufferedReader;
    new-instance v14, Ljava/io/BufferedReader;

    .end local v14           #reader:Ljava/io/BufferedReader;
    new-instance v17, Ljava/io/InputStreamReader;

    .line 44
    invoke-virtual {v13}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 43
    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 45
    .restart local v14       #reader:Ljava/io/BufferedReader;
    const-string v8, ""

    .line 46
    .local v8, line:Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v9, lineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v10, log:Ljava/lang/StringBuilder;
    const-string v17, "line.separator"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 49
    .local v15, separator:Ljava/lang/String;
    const-string v17, "pkg=[^\\s]+"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 50
    .local v12, pattern:Ljava/util/regex/Pattern;
    :goto_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 63
    const-string v17, "ObtainNotificationMessage"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "log:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-interface {v9}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    .line 66
    .local v16, size:I
    const/4 v6, 0x0

    :goto_2
    move/from16 v0, v16

    if-lt v6, v0, :cond_7

    .line 73
    if-eqz v4, :cond_0

    .line 74
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 76
    :cond_0
    invoke-virtual {v13}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 80
    .end local v4           #dataOutputStream:Ljava/io/DataOutputStream;
    .end local v6           #i:I
    .end local v7           #length:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #lineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #log:Ljava/lang/StringBuilder;
    .end local v12           #pattern:Ljava/util/regex/Pattern;
    .end local v14           #reader:Ljava/io/BufferedReader;
    .end local v15           #separator:Ljava/lang/String;
    .end local v16           #size:I
    .restart local v3       #dataOutputStream:Ljava/io/DataOutputStream;
    :goto_3
    const-string v17, "ObtainNotificationMessage"

    const-string v18, "finish"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/16 v17, 0x0

    return-object v17

    .line 34
    .end local v3           #dataOutputStream:Ljava/io/DataOutputStream;
    .restart local v4       #dataOutputStream:Ljava/io/DataOutputStream;
    .restart local v6       #i:I
    .restart local v7       #length:I
    :cond_1
    :try_start_3
    const-string v17, "ObtainNotificationMessage"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "commands["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v2, v6

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v17, Ljava/lang/StringBuilder;

    aget-object v18, v2, v6

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 33
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 51
    .restart local v8       #line:Ljava/lang/String;
    .restart local v9       #lineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #log:Ljava/lang/StringBuilder;
    .restart local v12       #pattern:Ljava/util/regex/Pattern;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    .restart local v15       #separator:Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "NotificationRecord"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 52
    invoke-virtual {v12, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 53
    .local v11, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 54
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v11           #matcher:Ljava/util/regex/Matcher;
    :cond_3
    :goto_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 69
    .end local v6           #i:I
    .end local v7           #length:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #lineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #log:Ljava/lang/StringBuilder;
    .end local v12           #pattern:Ljava/util/regex/Pattern;
    .end local v14           #reader:Ljava/io/BufferedReader;
    .end local v15           #separator:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 70
    .end local v4           #dataOutputStream:Ljava/io/DataOutputStream;
    .restart local v3       #dataOutputStream:Ljava/io/DataOutputStream;
    .local v5, e:Ljava/lang/Exception;
    :goto_5
    :try_start_4
    const-string v17, "ObtainNotificationMessage"

    const-string v18, "copy fail"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 73
    if-eqz v3, :cond_4

    .line 74
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 76
    :cond_4
    invoke-virtual {v13}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 77
    :catch_1
    move-exception v17

    goto/16 :goto_3

    .line 56
    .end local v3           #dataOutputStream:Ljava/io/DataOutputStream;
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v4       #dataOutputStream:Ljava/io/DataOutputStream;
    .restart local v6       #i:I
    .restart local v7       #length:I
    .restart local v8       #line:Ljava/lang/String;
    .restart local v9       #lineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #log:Ljava/lang/StringBuilder;
    .restart local v11       #matcher:Ljava/util/regex/Matcher;
    .restart local v12       #pattern:Ljava/util/regex/Pattern;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    .restart local v15       #separator:Ljava/lang/String;
    :cond_5
    :try_start_6
    const-string v17, "ObtainNotificationMessage"

    const-string v18, "what\'s this?!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 71
    .end local v6           #i:I
    .end local v7           #length:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #lineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #log:Ljava/lang/StringBuilder;
    .end local v11           #matcher:Ljava/util/regex/Matcher;
    .end local v12           #pattern:Ljava/util/regex/Pattern;
    .end local v14           #reader:Ljava/io/BufferedReader;
    .end local v15           #separator:Ljava/lang/String;
    :catchall_0
    move-exception v17

    move-object v3, v4

    .line 73
    .end local v4           #dataOutputStream:Ljava/io/DataOutputStream;
    .restart local v3       #dataOutputStream:Ljava/io/DataOutputStream;
    :goto_6
    if-eqz v3, :cond_6

    .line 74
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 76
    :cond_6
    invoke-virtual {v13}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 79
    :goto_7
    throw v17

    .line 67
    .end local v3           #dataOutputStream:Ljava/io/DataOutputStream;
    .restart local v4       #dataOutputStream:Ljava/io/DataOutputStream;
    .restart local v6       #i:I
    .restart local v7       #length:I
    .restart local v8       #line:Ljava/lang/String;
    .restart local v9       #lineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #log:Ljava/lang/StringBuilder;
    .restart local v12       #pattern:Ljava/util/regex/Pattern;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    .restart local v15       #separator:Ljava/lang/String;
    .restart local v16       #size:I
    :cond_7
    :try_start_8
    const-string v18, "ObtainNotificationMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v17, "app:"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 66
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 77
    :catch_2
    move-exception v17

    move-object v3, v4

    .end local v4           #dataOutputStream:Ljava/io/DataOutputStream;
    .restart local v3       #dataOutputStream:Ljava/io/DataOutputStream;
    goto/16 :goto_3

    .end local v6           #i:I
    .end local v7           #length:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #lineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #log:Ljava/lang/StringBuilder;
    .end local v12           #pattern:Ljava/util/regex/Pattern;
    .end local v14           #reader:Ljava/io/BufferedReader;
    .end local v15           #separator:Ljava/lang/String;
    .end local v16           #size:I
    :catch_3
    move-exception v18

    goto :goto_7

    .line 71
    :catchall_1
    move-exception v17

    goto :goto_6

    .line 69
    :catch_4
    move-exception v5

    goto :goto_5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/anall/statusbar/ObtainNotificationMessage;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 87
    return-void
.end method
