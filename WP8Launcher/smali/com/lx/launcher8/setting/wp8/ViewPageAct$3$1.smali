.class Lcom/lx/launcher8/setting/wp8/ViewPageAct$3$1;
.super Ljava/lang/Object;
.source "ViewPageAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->onPageScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3$1;->this$1:Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3$1;->this$1:Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;

    #getter for: Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;->access$0(Lcom/lx/launcher8/setting/wp8/ViewPageAct$3;)Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    move-result-object v0

    iget-object v0, v0, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;

    invoke-virtual {v0}, Lcom/lx/launcher8/view/TitleLinearLayout;->invalidate()V

    .line 233
    return-void
.end method
