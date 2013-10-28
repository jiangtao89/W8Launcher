.class Lcom/lx/launcher8/crop/img/Util$BackgroundJob$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/crop/img/Util$BackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/crop/img/Util$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/crop/img/Util$BackgroundJob;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob$1;->this$1:Lcom/lx/launcher8/crop/img/Util$BackgroundJob;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob$1;->this$1:Lcom/lx/launcher8/crop/img/Util$BackgroundJob;

    #getter for: Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mActivity:Lcom/lx/launcher8/crop/MonitoredActivity;
    invoke-static {v0}, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->access$0(Lcom/lx/launcher8/crop/img/Util$BackgroundJob;)Lcom/lx/launcher8/crop/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob$1;->this$1:Lcom/lx/launcher8/crop/img/Util$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/crop/MonitoredActivity;->removeLifeCycleListener(Lcom/lx/launcher8/crop/MonitoredActivity$LifeCycleListener;)V

    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob$1;->this$1:Lcom/lx/launcher8/crop/img/Util$BackgroundJob;

    #getter for: Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->access$1(Lcom/lx/launcher8/crop/img/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob$1;->this$1:Lcom/lx/launcher8/crop/img/Util$BackgroundJob;

    #getter for: Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->access$1(Lcom/lx/launcher8/crop/img/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 63
    :cond_0
    return-void
.end method
