.class Lcom/lx/launcher8/setting/wp8/ColorPickerAct$5;
.super Ljava/lang/Object;
.source "ColorPickerAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->createTable(Ljava/util/ArrayList;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ColorPickerAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 156
    .local v0, color:I
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$5;->this$0:Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->setResultColor(ILjava/lang/String;)V

    .line 157
    return-void
.end method
