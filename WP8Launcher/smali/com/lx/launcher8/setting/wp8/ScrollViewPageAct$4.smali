.class Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$4;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #setter for: Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->lastMotion:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->access$2(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;I)V

    .line 311
    const/4 v0, 0x0

    return v0
.end method
