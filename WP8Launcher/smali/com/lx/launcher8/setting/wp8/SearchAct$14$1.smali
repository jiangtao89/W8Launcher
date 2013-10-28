.class Lcom/lx/launcher8/setting/wp8/SearchAct$14$1;
.super Ljava/lang/Object;
.source "SearchAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/SearchAct$14;->onPageScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/wp8/SearchAct$14;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SearchAct$14;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$14$1;->this$1:Lcom/lx/launcher8/setting/wp8/SearchAct$14;

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$14$1;->this$1:Lcom/lx/launcher8/setting/wp8/SearchAct$14;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct$14;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SearchAct$14;->access$0(Lcom/lx/launcher8/setting/wp8/SearchAct$14;)Lcom/lx/launcher8/setting/wp8/SearchAct;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mTitleLinearLayout:Lcom/lx/launcher8/view/TitleLinearLayout;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$19(Lcom/lx/launcher8/setting/wp8/SearchAct;)Lcom/lx/launcher8/view/TitleLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/view/TitleLinearLayout;->invalidate()V

    .line 574
    return-void
.end method
