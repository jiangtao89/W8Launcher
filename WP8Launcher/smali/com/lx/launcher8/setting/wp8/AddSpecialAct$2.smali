.class Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;
.super Ljava/lang/Object;
.source "AddSpecialAct.java"

# interfaces
.implements Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/AddSpecialAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/setting/wp8/view/SeekButton;Z)V
    .locals 2
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 262
    :sswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    and-int/lit8 v1, v1, -0x3

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto :goto_0

    .line 269
    :sswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto :goto_0

    .line 276
    :sswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto :goto_0

    .line 283
    :sswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto :goto_0

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    and-int/lit8 v1, v1, -0x9

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 290
    :sswitch_4
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 293
    :cond_4
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 297
    :sswitch_5
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_5

    .line 298
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    and-int/lit8 v1, v1, -0x21

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 304
    :sswitch_6
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_6

    .line 305
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 307
    :cond_6
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    and-int/lit8 v1, v1, -0x41

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 311
    :sswitch_7
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_7

    .line 312
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 314
    :cond_7
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    and-int/lit16 v1, v1, -0x81

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 318
    :sswitch_8
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_8

    .line 319
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 321
    :cond_8
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    and-int/lit16 v1, v1, -0x101

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 325
    :sswitch_9
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_9

    .line 326
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 328
    :cond_9
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AddSpecialAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I

    move-result v1

    and-int/lit16 v1, v1, -0x201

    #setter for: Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V

    goto/16 :goto_0

    .line 260
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09001b -> :sswitch_1
        0x7f09001c -> :sswitch_4
        0x7f09001d -> :sswitch_0
        0x7f09001e -> :sswitch_3
        0x7f090020 -> :sswitch_2
        0x7f090022 -> :sswitch_5
        0x7f090027 -> :sswitch_7
        0x7f090032 -> :sswitch_8
        0x7f090034 -> :sswitch_6
        0x7f090036 -> :sswitch_9
    .end sparse-switch
.end method
