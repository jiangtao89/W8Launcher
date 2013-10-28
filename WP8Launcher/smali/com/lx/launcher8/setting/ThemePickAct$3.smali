.class Lcom/lx/launcher8/setting/ThemePickAct$3;
.super Ljava/lang/Object;
.source "ThemePickAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/ThemePickAct;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/ThemePickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/ThemePickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/ThemePickAct$3;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct$3;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;

    #getter for: Lcom/lx/launcher8/setting/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;
    invoke-static {v0}, Lcom/lx/launcher8/setting/ThemePickAct;->access$5(Lcom/lx/launcher8/setting/ThemePickAct;)Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct$3;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;

    #getter for: Lcom/lx/launcher8/setting/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;
    invoke-static {v0}, Lcom/lx/launcher8/setting/ThemePickAct;->access$5(Lcom/lx/launcher8/setting/ThemePickAct;)Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;

    move-result-object v0

    #calls: Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;->loadTheme()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;->access$0(Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;)V

    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/setting/ThemePickAct$3;->this$0:Lcom/lx/launcher8/setting/ThemePickAct;

    #getter for: Lcom/lx/launcher8/setting/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;
    invoke-static {v0}, Lcom/lx/launcher8/setting/ThemePickAct;->access$5(Lcom/lx/launcher8/setting/ThemePickAct;)Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/ThemePickAct$ThemeAdapater;->notifyDataSetChanged()V

    .line 91
    :cond_0
    return-void
.end method
