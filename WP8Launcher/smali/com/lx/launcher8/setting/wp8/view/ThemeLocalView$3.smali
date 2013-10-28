.class Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$3;
.super Ljava/lang/Object;
.source "ThemeLocalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->reloadThemes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->access$7(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->access$7(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;

    move-result-object v0

    #calls: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;->loadTheme()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;)V

    .line 131
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$3;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->access$7(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;->notifyDataSetChanged()V

    .line 133
    :cond_0
    return-void
.end method
