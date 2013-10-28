.class Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LockScreenPaperLocalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field fl:Landroid/widget/FrameLayout;

.field loading:Landroid/widget/LinearLayout;

.field pi:Lcom/lx/launcher8/setting/bean/PaperInfo;

.field screenShotIv:Landroid/widget/ImageView;

.field selected:Landroid/widget/TextView;

.field textTv:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter$ViewHolder;->this$1:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$LockScreenPaperAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
