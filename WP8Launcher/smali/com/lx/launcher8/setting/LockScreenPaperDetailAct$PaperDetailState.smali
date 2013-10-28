.class Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;
.super Ljava/lang/Object;
.source "LockScreenPaperDetailAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaperDetailState"
.end annotation


# instance fields
.field public isDownloading:Z

.field public isInit:Z

.field public loadingState:I

.field public progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 550
    iput-object p1, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;->this$0:Lcom/lx/launcher8/setting/LockScreenPaperDetailAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;->loadingState:I

    .line 552
    iput-boolean v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;->isDownloading:Z

    .line 553
    iput-boolean v0, p0, Lcom/lx/launcher8/setting/LockScreenPaperDetailAct$PaperDetailState;->isInit:Z

    return-void
.end method
