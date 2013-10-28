.class Lcom/lx/launcher8/AnallLauncher$29;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Lcom/lx/launcher8/task/GetAdsDifferentFrom$OnDisplayAds;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->launcherNetCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;

.field private final synthetic val$curTime:J


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$29;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iput-wide p2, p0, Lcom/lx/launcher8/AnallLauncher$29;->val$curTime:J

    .line 2189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayAds(Lcom/lx/launcher8/task/BllWP8Init;)V
    .locals 3
    .parameter "bll"

    .prologue
    .line 2192
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/lx/launcher8/task/BllWP8Init;->mResult:Lcom/app/common/bll/CResult;

    iget-boolean v0, v0, Lcom/app/common/bll/CResult;->mHaveNet:Z

    if-eqz v0, :cond_0

    .line 2193
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$29;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v0}, Lcom/lx/launcher8/AnallLauncher;->access$3(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v0

    iget-wide v1, p0, Lcom/lx/launcher8/AnallLauncher$29;->val$curTime:J

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/cfg/DeskSetting;->setLastStatistics(J)V

    .line 2194
    :cond_0
    return-void
.end method
