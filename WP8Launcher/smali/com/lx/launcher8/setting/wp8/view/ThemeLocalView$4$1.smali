.class Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4$1;
.super Ljava/lang/Object;
.source "ThemeLocalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4$1;->val$dialog:Landroid/app/ProgressDialog;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 173
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4$1;->this$1:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$4;)Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->mAdapater:Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;->access$7(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView;)Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;

    move-result-object v0

    #calls: Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;->loadTheme()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeLocalView$ThemeAdapater;)V

    .line 174
    return-void
.end method
