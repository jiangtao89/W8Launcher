.class Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$3;
.super Ljava/lang/Object;
.source "ScrollViewPageAct.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->initAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 291
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleScrollView:Lcom/lx/launcher8/view/UnHorizontalScrollView;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/UnHorizontalScrollView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 294
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
