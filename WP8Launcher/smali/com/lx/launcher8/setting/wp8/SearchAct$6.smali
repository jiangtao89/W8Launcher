.class Lcom/lx/launcher8/setting/wp8/SearchAct$6;
.super Ljava/lang/Object;
.source "SearchAct.java"

# interfaces
.implements Lcom/lx/launcher8/task/OnLoadingOverListener;


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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$6;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingOver(Lcom/app/common/bll/BllXmlPull;)V
    .locals 1
    .parameter "bll"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$6;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #calls: Lcom/lx/launcher8/setting/wp8/SearchAct;->onLoadingListOver(Lcom/app/common/bll/BllXmlPull;)V
    invoke-static {v0, p1}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$8(Lcom/lx/launcher8/setting/wp8/SearchAct;Lcom/app/common/bll/BllXmlPull;)V

    .line 468
    return-void
.end method
