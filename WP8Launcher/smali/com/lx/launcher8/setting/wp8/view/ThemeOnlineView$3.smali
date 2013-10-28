.class Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$3;
.super Ljava/lang/Object;
.source "ThemeOnlineView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/bean/Theme;

    .line 135
    .local v1, theme:Lcom/lx/launcher8/setting/bean/Theme;
    if-nez v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->access$3(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extral_id"

    iget v3, v1, Lcom/lx/launcher8/setting/bean/Theme;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;->access$3(Lcom/lx/launcher8/setting/wp8/view/ThemeOnlineView;)Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/ThemeOnlineListAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
