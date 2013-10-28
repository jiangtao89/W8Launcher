.class Lcom/lx/launcher8/setting/wp8/SearchAct$13;
.super Ljava/lang/Object;
.source "SearchAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/SearchAct;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$13;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$13;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/lx/launcher8/setting/wp8/SearchAct;->setEditText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$16(Lcom/lx/launcher8/setting/wp8/SearchAct;Ljava/lang/String;)V

    .line 457
    return-void
.end method
