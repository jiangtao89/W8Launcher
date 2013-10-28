.class Lcom/lx/launcher8/setting/TextStylePickAct$4;
.super Ljava/lang/Object;
.source "TextStylePickAct.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/TextStylePickAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/TextStylePickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/TextStylePickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/TextStylePickAct$4;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 173
    packed-switch p2, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct$4;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lx/launcher8/setting/TextStylePickAct;->specialFunTileText:I

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/TextStylePickAct$4;->this$0:Lcom/lx/launcher8/setting/TextStylePickAct;

    const/4 v1, 0x1

    iput v1, v0, Lcom/lx/launcher8/setting/TextStylePickAct;->specialFunTileText:I

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
