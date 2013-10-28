.class Lcom/app/common/net/UImageSever$LoadTask;
.super Landroid/os/AsyncTask;
.source "UImageSever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/common/net/UImageSever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/app/common/net/UImageSever;


# direct methods
.method public constructor <init>(Lcom/app/common/net/UImageSever;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "tag"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/app/common/net/UImageSever$LoadTask;->mTag:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 99
    iget-object v3, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    invoke-virtual {v3, v7}, Lcom/app/common/net/UImageSever;->setIsRunning(Z)V

    .line 100
    :goto_0
    iget-object v3, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    invoke-virtual {v3}, Lcom/app/common/net/UImageSever;->isLetGo()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->mWhichLoading:I
    invoke-static {v3}, Lcom/app/common/net/UImageSever;->access$0(Lcom/app/common/net/UImageSever;)I

    move-result v3

    iget-object v4, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->mUrlArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/app/common/net/UImageSever;->access$1(Lcom/app/common/net/UImageSever;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    invoke-virtual {v3, v6}, Lcom/app/common/net/UImageSever;->setIsRunning(Z)V

    .line 111
    const/4 v3, 0x0

    return-object v3

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->mUrlArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/app/common/net/UImageSever;->access$1(Lcom/app/common/net/UImageSever;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->mWhichLoading:I
    invoke-static {v4}, Lcom/app/common/net/UImageSever;->access$0(Lcom/app/common/net/UImageSever;)I

    move-result v4

    aget-object v2, v3, v4

    .line 102
    .local v2, urlStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->mSavePathArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/app/common/net/UImageSever;->access$2(Lcom/app/common/net/UImageSever;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->mWhichLoading:I
    invoke-static {v4}, Lcom/app/common/net/UImageSever;->access$0(Lcom/app/common/net/UImageSever;)I

    move-result v4

    aget-object v0, v3, v4

    .line 103
    .local v0, absPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 104
    .local v1, isGood:Z
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_2

    if-eqz v0, :cond_2

    .line 105
    iget-object v3, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->mDownLoadToFile:Lcom/app/common/net/UImageSever$DownLoadToFile;
    invoke-static {v3}, Lcom/app/common/net/UImageSever;->access$3(Lcom/app/common/net/UImageSever;)Lcom/app/common/net/UImageSever$DownLoadToFile;

    move-result-object v3

    iget-object v4, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/app/common/net/UImageSever;->access$4(Lcom/app/common/net/UImageSever;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/app/common/net/UImageSever$DownLoadToFile;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 107
    :cond_2
    iget-object v3, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->mWhichLoading:I
    invoke-static {v3}, Lcom/app/common/net/UImageSever;->access$0(Lcom/app/common/net/UImageSever;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcom/app/common/net/UImageSever;->mWhichLoading:I
    invoke-static {v3, v4}, Lcom/app/common/net/UImageSever;->access$5(Lcom/app/common/net/UImageSever;I)V

    .line 108
    new-array v4, v8, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->mWhichLoading:I
    invoke-static {v5}, Lcom/app/common/net/UImageSever;->access$0(Lcom/app/common/net/UImageSever;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    aput-object v2, v4, v7

    const/4 v3, 0x2

    aput-object v0, v4, v3

    const/4 v5, 0x3

    if-eqz v1, :cond_3

    const-string v3, "1"

    :goto_1
    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Lcom/app/common/net/UImageSever$LoadTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v3, "0"

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/app/common/net/UImageSever$LoadTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/app/common/net/UImageSever$LoadTask;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->onFinishedListener:Lcom/app/common/utils/OnFinishedListener;
    invoke-static {v0}, Lcom/app/common/net/UImageSever;->access$7(Lcom/app/common/net/UImageSever;)Lcom/app/common/utils/OnFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->onFinishedListener:Lcom/app/common/utils/OnFinishedListener;
    invoke-static {v0}, Lcom/app/common/net/UImageSever;->access$7(Lcom/app/common/net/UImageSever;)Lcom/app/common/utils/OnFinishedListener;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/app/common/utils/OnFinishedListener;->finish([Ljava/lang/Object;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/app/common/net/UImageSever$LoadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/app/common/net/UImageSever$LoadTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->mLoadedListener:Lcom/app/common/net/UImageSever$LoadedListener;
    invoke-static {v0}, Lcom/app/common/net/UImageSever;->access$6(Lcom/app/common/net/UImageSever;)Lcom/app/common/net/UImageSever$LoadedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/app/common/net/UImageSever$LoadTask;->this$0:Lcom/app/common/net/UImageSever;

    #getter for: Lcom/app/common/net/UImageSever;->mLoadedListener:Lcom/app/common/net/UImageSever$LoadedListener;
    invoke-static {v0}, Lcom/app/common/net/UImageSever;->access$6(Lcom/app/common/net/UImageSever;)Lcom/app/common/net/UImageSever$LoadedListener;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/app/common/net/UImageSever$LoadedListener;->call(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 119
    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "mTag"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/app/common/net/UImageSever$LoadTask;->mTag:Ljava/lang/String;

    .line 130
    return-void
.end method
