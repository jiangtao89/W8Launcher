.class Lcom/lx/launcher8/setting/wp8/ThemePickAct$4$1;
.super Ljava/lang/Object;
.source "ThemePickAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemePickAct$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/ThemePickAct$4;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemePickAct$4;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$4$1;->this$1:Lcom/lx/launcher8/setting/wp8/ThemePickAct$4;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$4$1;->val$dialog:Landroid/app/ProgressDialog;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$4$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 153
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$4$1;->this$1:Lcom/lx/launcher8/setting/wp8/ThemePickAct$4;

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemePickAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/ThemePickAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct$4;->access$0(Lcom/lx/launcher8/setting/wp8/ThemePickAct$4;)Lcom/lx/launcher8/setting/wp8/ThemePickAct;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->access$7(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;

    move-result-object v0

    #calls: Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;->loadTheme()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;->access$0(Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;)V

    .line 154
    return-void
.end method
