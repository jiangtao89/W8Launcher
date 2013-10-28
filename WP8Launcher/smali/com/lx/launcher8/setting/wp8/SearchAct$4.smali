.class Lcom/lx/launcher8/setting/wp8/SearchAct$4;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 381
    const/4 v0, 0x0

    check-cast v0, [Landroid/graphics/drawable/Drawable;

    .line 382
    .local v0, drawable:[Landroid/graphics/drawable/Drawable;
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 384
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 385
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mUrl:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$4(Lcom/lx/launcher8/setting/wp8/SearchAct;Ljava/lang/String;)V

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$5(Lcom/lx/launcher8/setting/wp8/SearchAct;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 388
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$6(Lcom/lx/launcher8/setting/wp8/SearchAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/cfg/DeskSetting;->setSearchDef(I)V

    .line 392
    :goto_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 395
    .end local v1           #obj:Ljava/lang/Object;
    :cond_1
    if-eqz v0, :cond_2

    .line 396
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbSearchType:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$7(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/ImageButton;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$0(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 399
    return-void

    .line 390
    .restart local v1       #obj:Ljava/lang/Object;
    .restart local p1
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$6(Lcom/lx/launcher8/setting/wp8/SearchAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/cfg/DeskSetting;->setSearchDef(I)V

    goto :goto_0
.end method
