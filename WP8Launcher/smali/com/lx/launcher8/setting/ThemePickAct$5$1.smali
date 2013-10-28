.class Lcom/lx/launcher8/setting/ThemePickAct$5$1;
.super Ljava/lang/Object;
.source "ThemePickAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/ThemePickAct$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/ThemePickAct$5;

.field private final synthetic val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/ThemePickAct$5;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/ThemePickAct$5$1;->this$1:Lcom/lx/launcher8/setting/ThemePickAct$5;

    iput-object p2, p0, Lcom/lx/launcher8/setting/ThemePickAct$5$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct$5$1;->val$dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->dismiss()V

    .line 173
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct$5$1;->this$1:Lcom/lx/launcher8/setting/ThemePickAct$5;

    #getter for: Lcom/lx/launcher8/setting/ThemePickAct$5;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/ThemePickAct$5;->access$0(Lcom/lx/launcher8/setting/ThemePickAct$5;)Lcom/lx/launcher8/setting/ThemePickAct;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;
    invoke-static {v0}, Lcom/lx/launcher8/setting/ThemePickAct;->access$5(Lcom/lx/launcher8/setting/ThemePickAct;)Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;

    move-result-object v0

    #calls: Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;->loadTheme()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;->access$0(Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;)V

    .line 174
    return-void
.end method
