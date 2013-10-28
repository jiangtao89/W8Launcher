.class Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;
.super Ljava/lang/Object;
.source "LockScreenPaperDetailAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;
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

.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 693
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->loadingState:I

    .line 695
    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->isDownloading:Z

    .line 696
    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$PaperDetailState;->isInit:Z

    return-void
.end method
