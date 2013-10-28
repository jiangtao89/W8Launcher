.class public Lcom/lx/launcher8/setting/wp8/PwdSetAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
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
    .line 25
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/PwdSetAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mLockKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/PwdSetAct;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mCurrentET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/PwdSetAct;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mNewET:Landroid/widget/EditText;

    return-object v0
.end method

.method private createView(Z)Landroid/view/View;
    .locals 12
    .parameter "modify"

    .prologue
    .line 43
    new-instance v10, Landroid/widget/ScrollView;

    invoke-direct {v10, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 44
    .local v10, sc:Landroid/widget/ScrollView;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, root:Landroid/widget/LinearLayout;
    invoke-virtual {v10, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    const/high16 v0, 0x4120

    invoke-static {p0, v0}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v0

    const/high16 v4, 0x3f00

    add-float/2addr v0, v4

    float-to-int v5, v0

    .line 48
    .local v5, margin:I
    const/4 v3, -0x1

    .local v3, textColor:I
    const/high16 v2, -0x100

    .line 49
    .local v2, backColor:I
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getThemePaper()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/high16 v3, -0x100

    .line 51
    const/4 v2, -0x1

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 55
    const v4, 0x7f0a0231

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->createItem(Landroid/widget/LinearLayout;IIII)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mCurrentET:Landroid/widget/EditText;

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mCurrentET:Landroid/widget/EditText;

    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mCurrentET:Landroid/widget/EditText;

    new-instance v4, Lcom/lx/launcher8/setting/wp8/PwdSetAct$1;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/PwdSetAct;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    :cond_1
    const v4, 0x7f0a0230

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->createItem(Landroid/widget/LinearLayout;IIII)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mNewET:Landroid/widget/EditText;

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mNewET:Landroid/widget/EditText;

    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 80
    const v4, 0x7f0a0232

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->createItem(Landroid/widget/LinearLayout;IIII)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mDupET:Landroid/widget/EditText;

    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mDupET:Landroid/widget/EditText;

    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 82
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mDupET:Landroid/widget/EditText;

    new-instance v4, Lcom/lx/launcher8/setting/wp8/PwdSetAct$2;

    invoke-direct {v4, p0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/PwdSetAct;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    const v4, 0x7f0a0233

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->createItem(Landroid/widget/LinearLayout;IIII)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mEmailET:Landroid/widget/EditText;

    .line 101
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mEmailET:Landroid/widget/EditText;

    const/16 v4, 0x21

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 102
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mEmailET:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v4}, Lcom/anall/screenlock/provider/LockSetting;->getLastEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 105
    .local v7, frame:Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 106
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {v7, v5, v0, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 107
    const/4 v0, -0x1

    const/4 v4, 0x0

    const/high16 v11, 0x3f80

    invoke-static {v0, v4, v11}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    .local v8, ll:Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 110
    .local v6, btn:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->getSelectorButton()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 111
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6, v0, v5, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 112
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 113
    const v0, 0x7f0a0077

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    .line 114
    new-instance v0, Lcom/lx/launcher8/setting/wp8/PwdSetAct$3;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/PwdSetAct;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const/4 v0, 0x0

    const/4 v4, -0x2

    const/high16 v11, 0x3f80

    invoke-static {v0, v4, v11}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    .line 121
    .local v9, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v0, v4, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 122
    invoke-virtual {v8, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v6, Landroid/widget/Button;

    .end local v6           #btn:Landroid/widget/Button;
    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 124
    .restart local v6       #btn:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->getSelectorButton()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 125
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6, v0, v5, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 126
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 127
    const v0, 0x7f0a0078

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    .line 128
    const/4 v0, 0x0

    const/4 v4, -0x2

    const/high16 v11, 0x3f80

    invoke-static {v0, v4, v11}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    .line 129
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v0, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 130
    invoke-virtual {v8, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v0, Lcom/lx/launcher8/setting/wp8/PwdSetAct$4;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct$4;-><init>(Lcom/lx/launcher8/setting/wp8/PwdSetAct;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const/4 v0, -0x1

    const/4 v4, -0x2

    invoke-static {v0, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    .line 138
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v5, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 139
    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    return-object v7
.end method


# virtual methods
.method createItem(Landroid/widget/LinearLayout;IIII)Landroid/widget/EditText;
    .locals 6
    .parameter "root"
    .parameter "backColor"
    .parameter "textColor"
    .parameter "titleId"
    .parameter "margin"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 145
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 146
    .local v2, tv:Landroid/widget/TextView;
    const v3, -0x5f5f60

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 148
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(I)V

    .line 149
    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 150
    invoke-static {v5, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, et:Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->getSelectorEditText()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 154
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 155
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 156
    invoke-static {v5, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 157
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    mul-int/lit8 v3, p5, 0x2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-object v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/anall/screenlock/provider/LockSetting;

    invoke-direct {v0, p0}, Lcom/anall/screenlock/provider/LockSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    .line 36
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extral_modify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->isModify:Z

    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v0}, Lcom/anall/screenlock/provider/LockSetting;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mLockKey:Ljava/lang/String;

    .line 38
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->isModify:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a022e

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-boolean v1, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->isModify:Z

    invoke-direct {p0, v1}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->createView(Z)Landroid/view/View;

    move-result-object v1

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 40
    return-void

    .line 38
    :cond_0
    const v0, 0x7f0a022d

    goto :goto_0
.end method

.method modifyPwd()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 168
    iget-boolean v9, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->isModify:Z

    if-eqz v9, :cond_1

    .line 169
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mCurrentET:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, curTxt:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v9}, Lcom/anall/screenlock/provider/LockSetting;->getPwd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 171
    :cond_0
    const v9, 0x7f0a0236

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->showHitPop(I)V

    .line 218
    .end local v1           #curTxt:Ljava/lang/String;
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mNewET:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, newTxt:Ljava/lang/String;
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mDupET:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, dupTxt:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 178
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v12, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v12, :cond_3

    .line 179
    :cond_2
    const v9, 0x7f0a0234

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->showHitPop(I)V

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 183
    const v9, 0x7f0a0235

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->showHitPop(I)V

    goto :goto_0

    .line 186
    :cond_4
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v9, v7}, Lcom/anall/screenlock/provider/LockSetting;->setPwd(Ljava/lang/String;)V

    .line 187
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mEmailET:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, email:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 189
    const-string v9, "^\\s*\\w+(?:\\.{0,1}[\\w-]+)*@[a-zA-Z0-9]+(?:[-.][a-zA-Z0-9]+)*\\.[a-zA-Z]+\\s*$"

    invoke-virtual {v4, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 190
    const v9, 0x7f0a0237

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->showHitPop(I)V

    goto :goto_0

    .line 193
    :cond_5
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v9, v4}, Lcom/anall/screenlock/provider/LockSetting;->setLastEmail(Ljava/lang/String;)V

    .line 194
    const-string v9, "@"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 195
    .local v5, index:I
    const-string v8, ""

    .line 196
    .local v8, pwdEmail:Ljava/lang/String;
    if-le v5, v11, :cond_6

    .line 197
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

    .line 199
    :cond_6
    iget-object v9, p0, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->mSettings:Lcom/anall/screenlock/provider/LockSetting;

    invoke-virtual {v9, v8}, Lcom/anall/screenlock/provider/LockSetting;->setPwdEmail(Ljava/lang/String;)V

    .line 201
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v6, intent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.EMAIL"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v9, "android.intent.extra.SUBJECT"

    const v10, 0x7f0a0239

    invoke-virtual {p0, v10}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const v9, 0x7f0a023a

    invoke-virtual {p0, v9}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 205
    invoke-static {}, Lcom/lx/launcher8/util/Utils;->getFormatTime()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    .line 204
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, content:Ljava/lang/String;
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const/high16 v9, 0x1000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    const-string v9, "plain/text"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/4 v9, 0x1

    invoke-virtual {p0, v6, v9}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 210
    .end local v0           #content:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 211
    .local v3, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->finish()V

    goto/16 :goto_0

    .line 212
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v3

    .line 213
    .local v3, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->finish()V

    goto/16 :goto_0

    .line 216
    .end local v3           #e:Ljava/lang/SecurityException;
    .end local v5           #index:I
    .end local v8           #pwdEmail:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->finish()V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 222
    invoke-super {p0, p1, p2, p3}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onActivityResult(IILandroid/content/Intent;)V

    .line 223
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->finish()V

    .line 224
    return-void
.end method

.method showHitPop(I)V
    .locals 3
    .parameter "msgId"

    .prologue
    .line 163
    new-instance v0, Lcom/lx/launcher8/view/PopupDialog;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/PopupDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/PopupDialog;->setMsg(Ljava/lang/String;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    .line 164
    const v1, 0x7f0a0228

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/PwdSetAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/view/PopupDialog;->setCancelButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/lx/launcher8/view/PopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/view/PopupDialog;->show()V

    .line 165
    return-void
.end method
