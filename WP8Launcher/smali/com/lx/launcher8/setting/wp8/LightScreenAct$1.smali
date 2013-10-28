.class Lcom/lx/launcher8/setting/wp8/LightScreenAct$1;
.super Ljava/lang/Object;
.source "LightScreenAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LightScreenAct;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/LightScreenAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LightScreenAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/LightScreenAct;->finish()V

    .line 71
    return-void
.end method
