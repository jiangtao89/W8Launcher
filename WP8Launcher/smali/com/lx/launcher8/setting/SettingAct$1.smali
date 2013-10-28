.class Lcom/lx/launcher8/setting/SettingAct$1;
.super Ljava/lang/Object;
.source "SettingAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/SettingAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/SettingAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/SettingAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/SettingAct$1;)Lcom/lx/launcher8/setting/SettingAct;
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/16 v11, 0xc8

    const/16 v10, 0x64

    const/4 v9, 0x3

    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 326
    :goto_0
    :sswitch_0
    return-void

    .line 210
    :sswitch_1
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const v6, 0x7f0901b7

    invoke-virtual {v5, v7, v6}, Lcom/lx/launcher8/setting/SettingAct;->pickColor(II)V

    goto :goto_0

    .line 213
    :sswitch_2
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const/4 v6, 0x0

    const v7, 0x7f0901b8

    invoke-virtual {v5, v6, v7}, Lcom/lx/launcher8/setting/SettingAct;->pickColor(II)V

    goto :goto_0

    .line 216
    :sswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v3, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    invoke-direct {v3, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 218
    .local v3, edit:Landroid/widget/EditText;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 219
    const/4 v5, -0x1

    .line 220
    const/4 v6, -0x2

    .line 218
    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const v6, 0x7f0a0194

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/setting/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 223
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const v6, 0x7f0a00a8

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/setting/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 225
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const v6, 0x7f0a00a9

    invoke-virtual {v5, v6}, Lcom/lx/launcher8/setting/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/lx/launcher8/setting/SettingAct$1$1;

    invoke-direct {v6, p0, v3}, Lcom/lx/launcher8/setting/SettingAct$1$1;-><init>(Lcom/lx/launcher8/setting/SettingAct$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 259
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #edit:Landroid/widget/EditText;
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const-class v6, Lcom/lx/launcher8/setting/ThemePickAct;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v1, choose:Landroid/content/Intent;
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    invoke-virtual {v5, v1}, Lcom/lx/launcher8/setting/SettingAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 263
    .end local v1           #choose:Landroid/content/Intent;
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.PICK"

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 265
    .restart local v1       #choose:Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const/4 v6, 0x3

    invoke-virtual {v5, v1, v6}, Lcom/lx/launcher8/setting/SettingAct;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, e:Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #choose:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 269
    .restart local v1       #choose:Landroid/content/Intent;
    const-string v5, "image/*"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    invoke-virtual {v5, v1, v9}, Lcom/lx/launcher8/setting/SettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 277
    .end local v1           #choose:Landroid/content/Intent;
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :sswitch_6
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const v6, 0x7f0901ae

    invoke-virtual {v5, v7, v6}, Lcom/lx/launcher8/setting/SettingAct;->pickColor(II)V

    goto/16 :goto_0

    .line 280
    :sswitch_7
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const v6, 0x7f09019b

    invoke-virtual {v5, v7, v6}, Lcom/lx/launcher8/setting/SettingAct;->pickColor(II)V

    goto/16 :goto_0

    .line 283
    :sswitch_8
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const v6, 0x7f09019f

    invoke-virtual {v5, v7, v6}, Lcom/lx/launcher8/setting/SettingAct;->pickColor(II)V

    goto/16 :goto_0

    .line 286
    :sswitch_9
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const-class v6, Lcom/lx/launcher8/setting/AppPickAct;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .restart local v1       #choose:Landroid/content/Intent;
    const-string v5, "extral_muti"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const/4 v6, 0x2

    invoke-virtual {v5, v1, v6}, Lcom/lx/launcher8/setting/SettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 295
    .end local v1           #choose:Landroid/content/Intent;
    :sswitch_a
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    invoke-virtual {v5, v7, v10}, Lcom/lx/launcher8/setting/SettingAct;->pickColor(II)V

    goto/16 :goto_0

    .line 298
    :sswitch_b
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const-class v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .restart local v1       #choose:Landroid/content/Intent;
    const-string v5, "PAGE"

    invoke-virtual {v1, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v5, "changeId"

    const/16 v6, 0x65

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    invoke-virtual {v5, v1, v8}, Lcom/lx/launcher8/setting/SettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 304
    .end local v1           #choose:Landroid/content/Intent;
    :sswitch_c
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const-class v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .restart local v1       #choose:Landroid/content/Intent;
    const-string v5, "PAGE"

    invoke-virtual {v1, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v5, "changeId"

    const/16 v6, 0x66

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    invoke-virtual {v5, v1, v8}, Lcom/lx/launcher8/setting/SettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 310
    .end local v1           #choose:Landroid/content/Intent;
    :sswitch_d
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const-class v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .restart local v1       #choose:Landroid/content/Intent;
    const-string v5, "PAGE"

    const/16 v6, 0x12c

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    const-string v5, "changeId"

    invoke-virtual {v1, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    invoke-virtual {v5, v1, v8}, Lcom/lx/launcher8/setting/SettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 316
    .end local v1           #choose:Landroid/content/Intent;
    :sswitch_e
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const-class v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .restart local v1       #choose:Landroid/content/Intent;
    const-string v5, "PAGE"

    const/16 v6, 0x190

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    invoke-virtual {v5, v1}, Lcom/lx/launcher8/setting/SettingAct;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 321
    .end local v1           #choose:Landroid/content/Intent;
    :sswitch_f
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    const-class v6, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .restart local v1       #choose:Landroid/content/Intent;
    const-string v5, "PAGE"

    const/16 v6, 0x1f4

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    iget-object v5, p0, Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    invoke-virtual {v5, v1}, Lcom/lx/launcher8/setting/SettingAct;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_a
        0x65 -> :sswitch_b
        0x66 -> :sswitch_c
        0xc8 -> :sswitch_d
        0x12c -> :sswitch_3
        0x12d -> :sswitch_4
        0x190 -> :sswitch_e
        0x191 -> :sswitch_f
        0x7f09019b -> :sswitch_7
        0x7f09019f -> :sswitch_8
        0x7f0901a2 -> :sswitch_9
        0x7f0901a3 -> :sswitch_0
        0x7f0901a4 -> :sswitch_0
        0x7f0901ac -> :sswitch_5
        0x7f0901ae -> :sswitch_6
        0x7f0901b7 -> :sswitch_1
        0x7f0901b8 -> :sswitch_2
    .end sparse-switch
.end method
