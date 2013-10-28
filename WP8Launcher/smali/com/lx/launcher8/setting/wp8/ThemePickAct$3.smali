.class Lcom/lx/launcher8/setting/wp8/ThemePickAct$3;
.super Ljava/lang/Object;
.source "ThemePickAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemePickAct;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ThemePickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ThemePickAct;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ThemePickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->access$7(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ThemePickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->access$7(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;

    move-result-object v0

    #calls: Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;->loadTheme()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;->access$0(Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;)V

    .line 130
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemePickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/ThemePickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemePickAct;->adapter:Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct;->access$7(Lcom/lx/launcher8/setting/wp8/ThemePickAct;)Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/ThemePickAct$ThemeAdapater;->notifyDataSetChanged()V

    .line 132
    :cond_0
    return-void
.end method
