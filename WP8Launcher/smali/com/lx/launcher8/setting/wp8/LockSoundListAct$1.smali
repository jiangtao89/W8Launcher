.class Lcom/lx/launcher8/setting/wp8/LockSoundListAct$1;
.super Ljava/lang/Object;
.source "LockSoundListAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 48
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extral_value"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, path:Ljava/lang/String;
    const-string v3, "sound_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 51
    .local v2, position:I
    const/4 v0, 0x0

    .line 52
    .local v0, height:I
    if-lez v2, :cond_0

    .line 53
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    iget-object v3, v3, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->topLinear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    invoke-virtual {v3}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->getHeight()I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    iget-object v5, v5, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->linear:Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$Linear;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    add-int v0, v3, v4

    .line 55
    :cond_0
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/LockSoundListAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockSoundListAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/LockSoundListAct;->access$0(Lcom/lx/launcher8/setting/wp8/LockSoundListAct;)Landroid/widget/ScrollView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 57
    .end local v0           #height:I
    .end local v2           #position:I
    :cond_1
    return-void
.end method
