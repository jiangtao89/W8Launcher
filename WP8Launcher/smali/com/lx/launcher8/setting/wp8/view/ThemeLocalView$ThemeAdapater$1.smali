.class Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater$1;
.super Ljava/lang/Object;
.source "ThemeLocalView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;

.field private final synthetic val$theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;Lcom/lx/launcher8/db/ThemeHelper$Theme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater$1;->val$theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;->access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;)Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater$1;->val$theme:Lcom/lx/launcher8/db/ThemeHelper$Theme;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/AnallApp;->setParam(Ljava/lang/Object;)V

    .line 265
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;->access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;)Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->access$1(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->startActivity(Landroid/content/Intent;)V

    .line 266
    return-void
.end method
