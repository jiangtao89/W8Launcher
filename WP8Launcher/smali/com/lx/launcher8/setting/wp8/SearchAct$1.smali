.class Lcom/lx/launcher8/setting/wp8/SearchAct$1;
.super Ljava/lang/Object;
.source "SearchAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/SearchAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$0(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$0(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/16 v1, -0xf

    const/16 v2, 0x19

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 351
    :cond_0
    return-void
.end method
