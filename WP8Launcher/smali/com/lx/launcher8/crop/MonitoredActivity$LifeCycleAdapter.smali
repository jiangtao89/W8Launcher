.class public Lcom/lx/launcher8/crop/MonitoredActivity$LifeCycleAdapter;
.super Ljava/lang/Object;
.source "MonitoredActivity.java"

# interfaces
.implements Lcom/lx/launcher8/crop/MonitoredActivity$LifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/crop/MonitoredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycleAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lcom/lx/launcher8/crop/MonitoredActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 38
    return-void
.end method

.method public onActivityDestroyed(Lcom/lx/launcher8/crop/MonitoredActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 41
    return-void
.end method

.method public onActivityStarted(Lcom/lx/launcher8/crop/MonitoredActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 44
    return-void
.end method

.method public onActivityStopped(Lcom/lx/launcher8/crop/MonitoredActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 47
    return-void
.end method
