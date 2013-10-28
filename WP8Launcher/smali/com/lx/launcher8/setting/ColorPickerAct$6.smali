.class Lcom/lx/launcher8/setting/ColorPickerAct$6;
.super Ljava/lang/Object;
.source "ColorPickerAct.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/ColorPickerAct;->createTable(Ljava/util/ArrayList;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/ColorPickerAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/ColorPickerAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/ColorPickerAct$6;->this$0:Lcom/lx/launcher8/setting/ColorPickerAct;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 198
    iget-object v0, p0, Lcom/lx/launcher8/setting/ColorPickerAct$6;->this$0:Lcom/lx/launcher8/setting/ColorPickerAct;

    #setter for: Lcom/lx/launcher8/setting/ColorPickerAct;->mCustom:Z
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/ColorPickerAct;->access$1(Lcom/lx/launcher8/setting/ColorPickerAct;Z)V

    .line 199
    iget-object v0, p0, Lcom/lx/launcher8/setting/ColorPickerAct$6;->this$0:Lcom/lx/launcher8/setting/ColorPickerAct;

    check-cast p1, Lcom/anall/colorpick/ColorPanelView;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/lx/launcher8/setting/ColorPickerAct;->showPickColorDialog(Lcom/anall/colorpick/ColorPanelView;)V

    .line 200
    return v1
.end method
