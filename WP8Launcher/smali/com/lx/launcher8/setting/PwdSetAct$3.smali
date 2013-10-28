.class Lcom/lx/launcher8/setting/PwdSetAct$3;
.super Ljava/lang/Object;
.source "PwdSetAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/PwdSetAct;->createView(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/PwdSetAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/PwdSetAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/PwdSetAct$3;->this$0:Lcom/lx/launcher8/setting/PwdSetAct;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lx/launcher8/setting/PwdSetAct$3;->this$0:Lcom/lx/launcher8/setting/PwdSetAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/PwdSetAct;->modifyPwd()V

    .line 129
    return-void
.end method
