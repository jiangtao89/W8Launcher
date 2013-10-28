.class Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$2;
.super Ljava/lang/Object;
.source "ThemeRecomView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeMainAct;)V
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
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    .line 90
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
    .line 93
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/bean/Theme;

    .line 94
    .local v1, theme:Lcom/lx/launcher8/setting/bean/Theme;
    if-nez v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v2

    const-class v3, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extral_id"

    iget v3, v1, Lcom/lx/launcher8/setting/bean/Theme;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView$2;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;->access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeRecomView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
