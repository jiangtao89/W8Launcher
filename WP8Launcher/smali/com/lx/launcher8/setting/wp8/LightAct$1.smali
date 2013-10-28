.class Lcom/lx/launcher8/setting/wp8/LightAct$1;
.super Ljava/lang/Object;
.source "LightAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/LightAct;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LightAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LightAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LightAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LightAct;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LightAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LightAct;->led:Lcom/lx/launcher8/util/LEDManager;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LightAct;->access$2(Lcom/lx/launcher8/setting/wp8/LightAct;)Lcom/lx/launcher8/util/LEDManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/util/LEDManager;->setLight(Ljava/lang/Boolean;)V

    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LightAct;

    #calls: Lcom/lx/launcher8/setting/wp8/LightAct;->setBackground()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/LightAct;->access$3(Lcom/lx/launcher8/setting/wp8/LightAct;)V

    .line 90
    return-void
.end method
