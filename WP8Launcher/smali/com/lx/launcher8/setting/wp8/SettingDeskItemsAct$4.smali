.class Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$4;
.super Ljava/lang/Object;
.source "SettingDeskItemsAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->setResult(I)V

    .line 132
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct$4;->this$0:Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/SettingDeskItemsAct;->finish()V

    .line 133
    return-void
.end method
