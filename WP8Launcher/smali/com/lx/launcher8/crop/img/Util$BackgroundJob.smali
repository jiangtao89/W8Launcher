.class Lcom/lx/launcher8/crop/img/Util$BackgroundJob;
.super Lcom/lx/launcher8/crop/MonitoredActivity$LifeCycleAdapter;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/crop/img/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundJob"
.end annotation


# instance fields
.field private final mActivity:Lcom/lx/launcher8/crop/MonitoredActivity;

.field private final mCleanupRunner:Ljava/lang/Runnable;

.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/crop/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "job"
    .parameter "dialog"
    .parameter "handler"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lx/launcher8/crop/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 59
    new-instance v0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/crop/img/Util$BackgroundJob$1;-><init>(Lcom/lx/launcher8/crop/img/Util$BackgroundJob;)V

    iput-object v0, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    .line 68
    iput-object p1, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mActivity:Lcom/lx/launcher8/crop/MonitoredActivity;

    .line 69
    iput-object p3, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    .line 70
    iput-object p2, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mActivity:Lcom/lx/launcher8/crop/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/lx/launcher8/crop/MonitoredActivity;->addLifeCycleListener(Lcom/lx/launcher8/crop/MonitoredActivity$LifeCycleListener;)V

    .line 72
    iput-object p4, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/crop/img/Util$BackgroundJob;)Lcom/lx/launcher8/crop/MonitoredActivity;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mActivity:Lcom/lx/launcher8/crop/MonitoredActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/crop/img/Util$BackgroundJob;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/lx/launcher8/crop/MonitoredActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public onActivityStarted(Lcom/lx/launcher8/crop/MonitoredActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 100
    return-void
.end method

.method public onActivityStopped(Lcom/lx/launcher8/crop/MonitoredActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 95
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lx/launcher8/crop/img/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    throw v0
.end method
