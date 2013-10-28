.class Lcom/lx/launcher8/setting/wp8/SearchAct$2;
.super Ljava/lang/Object;
.source "SearchAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/SearchAct;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #calls: Lcom/lx/launcher8/setting/wp8/SearchAct;->goSearch()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$1(Lcom/lx/launcher8/setting/wp8/SearchAct;)V

    .line 361
    return-void
.end method
