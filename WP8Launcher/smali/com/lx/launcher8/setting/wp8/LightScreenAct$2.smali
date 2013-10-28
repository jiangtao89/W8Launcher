.class Lcom/lx/launcher8/setting/wp8/LightScreenAct$2;
.super Landroid/os/Handler;
.source "LightScreenAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/LightScreenAct;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LightScreenAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LightScreenAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LightScreenAct;

    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/LightScreenAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->finish()V

    .line 80
    :cond_0
    return-void
.end method
