.class Lcom/lx/launcher8/setting/wp8/ViewPageAct$2;
.super Ljava/lang/Object;
.source "ViewPageAct.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ViewPageAct;->initAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ViewPageAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 179
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
