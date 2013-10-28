.class Lcom/lx/launcher8/setting/AddSpecialAct$2;
.super Ljava/lang/Object;
.source "AddSpecialAct.java"

# interfaces
.implements Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/AddSpecialAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/AddSpecialAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/AddSpecialAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 2
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/lx/launcher8/view/SeekButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    :pswitch_0
    return-void

    .line 180
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    #setter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/AddSpecialAct;I)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v1

    and-int/lit8 v1, v1, -0x3

    #setter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/AddSpecialAct;I)V

    goto :goto_0

    .line 187
    :pswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    #setter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/AddSpecialAct;I)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    #setter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/AddSpecialAct;I)V

    goto :goto_0

    .line 194
    :pswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    #setter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/AddSpecialAct;I)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    #setter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/AddSpecialAct;I)V

    goto :goto_0

    .line 201
    :pswitch_4
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    #setter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/AddSpecialAct;I)V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v1

    and-int/lit8 v1, v1, -0x9

    #setter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 208
    :pswitch_5
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    #setter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    #setter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 215
    :pswitch_6
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_5

    .line 216
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    #setter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I

    move-result v1

    and-int/lit8 v1, v1, -0x21

    #setter for: Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x7f09001b
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
