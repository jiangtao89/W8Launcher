.class Lcom/lx/launcher8/setting/AppIndexAct$1;
.super Ljava/lang/Object;
.source "AppIndexAct.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/AppIndexAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/AppIndexAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/AppIndexAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/AppIndexAct$1;->this$0:Lcom/lx/launcher8/setting/AppIndexAct;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 136
    const v1, 0x7f0a0179

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    .line 137
    .local v0, blod:Z
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/AppIndexAct$1;->this$0:Lcom/lx/launcher8/setting/AppIndexAct;

    #getter for: Lcom/lx/launcher8/setting/AppIndexAct;->mSettings:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v1}, Lcom/lx/launcher8/setting/AppIndexAct;->access$0(Lcom/lx/launcher8/setting/AppIndexAct;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/cfg/AppSetting;->setAppIndexBlod(Z)V

    .line 138
    return-void

    .line 136
    .end local v0           #blod:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
