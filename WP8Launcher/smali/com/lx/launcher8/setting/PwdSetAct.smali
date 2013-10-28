.class public Lcom/lx/launcher8/setting/PwdSetAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "PwdSetAct.java"


# static fields
.field public static final EXTRAL_MODIFY:Ljava/lang/String; = "extral_modify"


# instance fields
.field private isModify:Z

.field private mCurrentET:Landroid/widget/EditText;

.field private mDupET:Landroid/widget/EditText;

.field private mEmailET:Landroid/widget/EditText;

.field private mLockKey:Ljava/lang/String;

.field private mNewET:Landroid/widget/EditText;

.field private mSettings:Lcom/anall/screenlock/provider/LockSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/PwdSetAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mLockKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/PwdSetAct;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mCurrentET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/PwdSetAct;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mNewET:Landroid/widget/EditText;

    return-object v0
.end method

.method private createView(Z)Landroid/view/View;
    .locals 20
    .parameter "modify"

    .prologue
    .line 47
    new-instance v16, Landroid/widget/ScrollView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 48
    .local v16, sc:Landroid/widget/ScrollView;
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .local v4, root:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 51
    const/high16 v3, 0x4120

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v3

    const/high16 v7, 0x3f00

    add-float/2addr v3, v7

    float-to-int v8, v3

    .line 52
    .local v8, margin:I
    const/high16 v6, -0x100

    .local v6, textColor:I
    const/4 v5, -0x1

    .line 53
    .local v5, backColor:I
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    .local v17, tv:Landroid/widget/TextView;
    div-int/lit8 v3, v8, 0x2

    const/4 v7, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v8, v7, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    const v3, 0x7f0200e9

    const/4 v7, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v3, v7, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 56
    const v3, 0x7f020069

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 57
    const/16 v3, 0x13

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 58
    const/high16 v3, 0x4190

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    const v3, 0x7f0a022f

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 60
    const/4 v3, -0x1

    const/16 v7, 0x2d

    invoke-static {v3, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    const v3, 0x7f0a022e

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 64
    const v7, 0x7f0a0231

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/lx/launcher8/setting/PwdSetAct;->createItem(Landroid/widget/LinearLayout;IIII)Landroid/widget/EditText;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lx/launcher8/setting/PwdSetAct;->mCurrentET:Landroid/widget/EditText;

    .line 65
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/PwdSetAct;->mCurrentET:Landroid/widget/EditText;

    const/16 v7, 0x82

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 66
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/PwdSetAct;->mCurrentET:Landroid/widget/EditText;

    new-instance v7, Lcom/lx/launcher8/setting/PwdSetAct$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/lx/launcher8/setting/PwdSetAct$1;-><init>(Lcom/lx/launcher8/setting/PwdSetAct;)V

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    :cond_0
    const v7, 0x7f0a0230

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/lx/launcher8/setting/PwdSetAct;->createItem(Landroid/widget/LinearLayout;IIII)Landroid/widget/EditText;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lx/launcher8/setting/PwdSetAct;->mNewET:Landroid/widget/EditText;

    .line 87
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/PwdSetAct;->mNewET:Landroid/widget/EditText;

    const/16 v7, 0x82

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 89
    const v7, 0x7f0a0232

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/lx/launcher8/setting/PwdSetAct;->createItem(Landroid/widget/LinearLayout;IIII)Landroid/widget/EditText;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lx/launcher8/setting/PwdSetAct;->mDupET:Landroid/widget/EditText;

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/PwdSetAct;->mDupET:Landroid/widget/EditText;

    const/16 v7, 0x82

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/PwdSetAct;->mDupET:Landroid/widget/EditText;

    new-instance v7, Lcom/lx/launcher8/setting/PwdSetAct$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/lx/launcher8/setting/PwdSetAct$2;-><init>(Lcom/lx/launcher8/setting/PwdSetAct;)V

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    const v7, 0x7f0a0233

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/lx/launcher8/setting/PwdSetAct;->createItem(Landroid/widget/LinearLayout;IIII)Landroid/widget/EditText;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lx/launcher8/setting/PwdSetAct;->mEmailET:Landroid/widget/EditText;

    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/PwdSetAct;->mEmailET:Landroid/widget/EditText;

    const/16 v7, 0x21

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lx/launcher8/setting/PwdSetAct;->mEmailET:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lx/launcher8/setting/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v7}, Lcom/anall/screenlock/provider/LockSetting;->getLastEmail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 114
    .local v10, frame:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 115
    const v3, -0x161617

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 117
    const/4 v3, -0x1

    const/4 v7, 0x0

    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-static {v3, v7, v0}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 120
    .local v14, ll:Landroid/widget/LinearLayout;
    new-instance v9, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 121
    .local v9, btn:Landroid/widget/Button;
    const v3, 0x7f0200ac

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 122
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v9, v3, v8, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 123
    invoke-virtual {v9, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 124
    const v3, 0x7f0a0077

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setText(I)V

    .line 125
    new-instance v3, Lcom/lx/launcher8/setting/PwdSetAct$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lx/launcher8/setting/PwdSetAct$3;-><init>(Lcom/lx/launcher8/setting/PwdSetAct;)V

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const/4 v3, 0x0

    const/4 v7, -0x2

    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-static {v3, v7, v0}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    .line 133
    .local v15, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v14, v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    const/4 v3, 0x1

    const/4 v7, -0x1

    invoke-static {v3, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    .line 135
    .local v13, lineParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v3, v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 136
    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 137
    .local v11, line1:Landroid/view/View;
    const/4 v3, -0x1

    invoke-virtual {v11, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    invoke-virtual {v11, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 140
    .local v12, line2:Landroid/view/View;
    const v3, -0x5f5f60

    invoke-virtual {v12, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 141
    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    new-instance v9, Landroid/widget/Button;

    .end local v9           #btn:Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 144
    .restart local v9       #btn:Landroid/widget/Button;
    const v3, 0x7f0200ac

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 145
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v9, v3, v8, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 146
    invoke-virtual {v9, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 147
    const v3, 0x7f0a0078

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setText(I)V

    .line 148
    const/4 v3, 0x0

    const/4 v7, -0x2

    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-static {v3, v7, v0}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    .line 150
    invoke-virtual {v14, v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v3, Lcom/lx/launcher8/setting/PwdSetAct$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lx/launcher8/setting/PwdSetAct$4;-><init>(Lcom/lx/launcher8/setting/PwdSetAct;)V

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const/4 v3, -0x1

    const/4 v7, -0x2

    invoke-static {v3, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    return-object v10
.end method


# virtual methods
.method createItem(Landroid/widget/LinearLayout;IIII)Landroid/widget/EditText;
    .locals 7
    .parameter "root"
    .parameter "backColor"
    .parameter "textColor"
    .parameter "titleId"
    .parameter "margin"

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 163
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 164
    .local v2, tv:Landroid/widget/TextView;
    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 166
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(I)V

    .line 167
    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    invoke-static {v6, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 169
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, p5, v4, p5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 170
    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, et:Landroid/widget/EditText;
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 174
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 175
    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 176
    invoke-static {v6, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 177
    mul-int/lit8 v3, p5, 0x2

    invoke-virtual {v1, p5, v4, p5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-object v0
.end method

.method modifyPwd()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 195
    iget-boolean v9, p0, Lcom/lx/launcher8/setting/PwdSetAct;->isModify:Z

    if-eqz v9, :cond_1

    .line 196
    iget-object v9, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mCurrentET:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, curTxt:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v9}, Lcom/anall/screenlock/provider/LockSetting;->getPwd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 198
    :cond_0
    const v9, 0x7f0a0236

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/PwdSetAct;->showHitPop(I)V

    .line 245
    .end local v1           #curTxt:Ljava/lang/String;
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v9, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mNewET:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, newTxt:Ljava/lang/String;
    iget-object v9, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mDupET:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, dupTxt:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 205
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v12, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v12, :cond_3

    .line 206
    :cond_2
    const v9, 0x7f0a0234

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/PwdSetAct;->showHitPop(I)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 210
    const v9, 0x7f0a0235

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/PwdSetAct;->showHitPop(I)V

    goto :goto_0

    .line 213
    :cond_4
    iget-object v9, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v9, v7}, Lcom/anall/screenlock/provider/LockSetting;->setPwd(Ljava/lang/String;)V

    .line 214
    iget-object v9, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mEmailET:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, email:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 216
    const-string v9, "^\\s*\\w+(?:\\.{0,1}[\\w-]+)*@[a-zA-Z0-9]+(?:[-.][a-zA-Z0-9]+)*\\.[a-zA-Z]+\\s*$"

    invoke-virtual {v4, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 217
    const v9, 0x7f0a0237

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/PwdSetAct;->showHitPop(I)V

    goto :goto_0

    .line 220
    :cond_5
    iget-object v9, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v9, v4}, Lcom/anall/screenlock/provider/LockSetting;->setLastEmail(Ljava/lang/String;)V

    .line 221
    const-string v9, "@"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 222
    .local v5, index:I
    const-string v8, ""

    .line 223
    .local v8, pwdEmail:Ljava/lang/String;
    if-le v5, v11, :cond_6

    .line 224
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "***"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 226
    :cond_6
    iget-object v9, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v9, v8}, Lcom/anall/screenlock/provider/LockSetting;->setPwdEmail(Ljava/lang/String;)V

    .line 228
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v6, intent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.EMAIL"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v9, "android.intent.extra.SUBJECT"

    const v10, 0x7f0a0239

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/PwdSetAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const v9, 0x7f0a023a

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/PwdSetAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 232
    invoke-static {}, Lcom/lx/launcher8/util/Utils;->getFormatTime()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    .line 231
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, content:Ljava/lang/String;
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const/high16 v9, 0x1000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    const-string v9, "plain/text"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const/4 v9, 0x1

    invoke-virtual {p0, v6, v9}, Lcom/lx/launcher8/setting/PwdSetAct;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 237
    .end local v0           #content:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 238
    .local v3, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/PwdSetAct;->finish()V

    goto/16 :goto_0

    .line 239
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v3

    .line 240
    .local v3, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/PwdSetAct;->finish()V

    goto/16 :goto_0

    .line 243
    .end local v3           #e:Ljava/lang/SecurityException;
    .end local v5           #index:I
    .end local v8           #pwdEmail:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/PwdSetAct;->finish()V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 249
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/NoSearchAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/PwdSetAct;->finish()V

    .line 251
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/PwdSetAct;->mLockKey:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/PwdSetAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extral_modify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/PwdSetAct;->isModify:Z

    .line 43
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/PwdSetAct;->isModify:Z

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/PwdSetAct;->createView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/PwdSetAct;->setContentView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method showHitPop(I)V
    .locals 5
    .parameter "msgId"

    .prologue
    .line 183
    new-instance v0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    const v1, 0x7f0e0005

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 184
    .local v0, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v1, Lcom/lx/launcher8/setting/PwdSetAct$5;

    invoke-direct {v1, p0, v0}, Lcom/lx/launcher8/setting/PwdSetAct$5;-><init>(Lcom/lx/launcher8/setting/PwdSetAct;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v1, 0x7f0a01c4

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/PwdSetAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/lx/launcher8/setting/PwdSetAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0077

    invoke-virtual {p0, v3}, Lcom/lx/launcher8/setting/PwdSetAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    .line 191
    invoke-virtual {v0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    .line 192
    return-void
.end method
