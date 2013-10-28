.class Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$1;
.super Ljava/lang/Object;
.source "SettingSearchItemsAct.java"

# interfaces
.implements Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/setting/wp8/view/SeekButton;Z)V
    .locals 2
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 128
    :pswitch_0
    if-eqz p2, :cond_0

    .line 129
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    const/4 v1, 0x1

    #setter for: Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mStatus:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->access$0(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;I)V

    .line 130
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mTvMode:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->access$1(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0158

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    const/4 v1, 0x0

    #setter for: Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mStatus:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->access$0(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;I)V

    .line 133
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->mTvMode:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;->access$1(Lcom/lx/launcher8/setting/wp8/SettingSearchItemsAct;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0159

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x7f090189
        :pswitch_0
    .end packed-switch
.end method
