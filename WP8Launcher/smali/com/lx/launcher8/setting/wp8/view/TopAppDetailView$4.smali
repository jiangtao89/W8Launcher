.class Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$4;
.super Ljava/lang/Object;
.source "TopAppDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->createBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 274
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIcon2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    move-result-object v4

    const v5, 0x7f0a028f

    invoke-static {v4, v5}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    .line 289
    :goto_0
    return-void

    .line 279
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lx/launcher8/util/BasePath;->DATA_EXSTORAGE_DOWN:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "icon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, path:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getPkName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIcon2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lx/launcher8/util/Utils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    move-result-object v4

    const v5, 0x7f0a0290

    invoke-static {v4, v5}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;I)V

    goto :goto_0

    .line 287
    :cond_1
    new-instance v2, Lcom/app/download/bean/FileSeed;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAppInfo:Lcom/lx/launcher8/setting/bean/TopAppInfo;
    invoke-static {v4}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$0(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/bean/TopAppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/bean/TopAppInfo;->getIcon2()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1, v3}, Lcom/app/download/bean/FileSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .local v2, fs:Lcom/app/download/bean/FileSeed;
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->mAct:Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;
    invoke-static {v5}, Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;->access$1(Lcom/lx/launcher8/setting/wp8/view/TopAppDetailView;)Lcom/lx/launcher8/setting/wp8/TopAppDetailAct;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/app/download/bean/DownloadManager;->downLoad(Landroid/content/Context;Lcom/app/download/bean/FileSeed;Z)V

    goto/16 :goto_0
.end method
