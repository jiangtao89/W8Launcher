.class Lcom/lx/launcher8/setting/wp8/SearchAct$11;
.super Ljava/lang/Object;
.source "SearchAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/SearchAct;->initView()V
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$11;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 301
    const/4 v1, -0x1

    .line 302
    .local v1, val:I
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$11;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$14(Lcom/lx/launcher8/setting/wp8/SearchAct;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$11;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$14(Lcom/lx/launcher8/setting/wp8/SearchAct;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    iget-object v2, v2, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$11;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mItemCell:Lcom/lx/launcher8/bean/ItemCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$14(Lcom/lx/launcher8/setting/wp8/SearchAct;)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v2

    iget-object v2, v2, Lcom/lx/launcher8/bean/ItemCell;->appName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;I)I

    move-result v1

    .line 309
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$11;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$15(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "page"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string v2, "item"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$11;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    invoke-virtual {v2, v0, v4}, Lcom/lx/launcher8/setting/wp8/SearchAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 313
    return-void

    .line 306
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
