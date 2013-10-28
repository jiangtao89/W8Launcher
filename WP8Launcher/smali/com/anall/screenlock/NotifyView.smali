.class public Lcom/anall/screenlock/NotifyView;
.super Lcom/anall/screenlock/FlowLayout;
.source "NotifyView.java"


# static fields
.field static final FLAG_SHOW_CALL:I = 0x2

.field static final FLAG_SHOW_SMS:I = 0x1

.field static mIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mSpecialPkg:Ljava/lang/String;


# instance fields
.field private mChildDivider:I

.field private mChildHeight:I

.field private mChildWidth:I

.field private final mShowArrays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/anall/screenlock/NotifyView;->mIconMap:Ljava/util/HashMap;

    .line 34
    const/16 v3, 0x14

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "com.tencent.mobileqq"

    aput-object v3, v2, v5

    const-string v3, "com.facebook.katana"

    aput-object v3, v2, v6

    const-string v3, "com.sina.weibo"

    aput-object v3, v2, v7

    const-string v3, "com.tencent.WBlog"

    aput-object v3, v2, v8

    const-string v3, "com.tencent.mm"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 35
    const-string v4, "com.twitter.android"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "com.google.android.gm"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "com.google.android.apps.plus"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "com.google.android.talk"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 36
    const-string v4, "com.whatsapp"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "jp.naver.line.android"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "com.linkedin.android"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "com.skype.raider"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "com.duowan.mobile"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "com.xiaomi.channel"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    .line 37
    const-string v4, "com.immomo.momo"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "com.tencent.androidqqmail"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "com.netease.mobimail"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "com.qzone"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "com.baidu.tieba"

    aput-object v4, v2, v3

    .line 38
    .local v2, pkgs:[Ljava/lang/String;
    const/16 v3, 0x14

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "l_qq"

    aput-object v3, v1, v5

    const-string v3, "l_facebook"

    aput-object v3, v1, v6

    const-string v3, " l_sina"

    aput-object v3, v1, v7

    const-string v3, " l_texun"

    aput-object v3, v1, v8

    const-string v3, "l_weixin"

    aput-object v3, v1, v9

    const/4 v3, 0x5

    const-string v4, "l_twitter"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "l_mail"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "l_googlea"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "l_google_talk"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    .line 39
    const-string v4, "l_whatsapp"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "l_line"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "l_linkedin"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "l_skype"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "l_yy"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    const-string v4, "l_mi"

    aput-object v4, v1, v3

    const/16 v3, 0xf

    const-string v4, "l_momo"

    aput-object v4, v1, v3

    const/16 v3, 0x10

    const-string v4, "l_mail"

    aput-object v4, v1, v3

    const/16 v3, 0x11

    const-string v4, "l_mobimail"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const-string v4, "l_qzone"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const-string v4, "l_baidu"

    aput-object v4, v1, v3

    .line 40
    .local v1, icons:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 29
    return-void

    .line 41
    :cond_0
    sget-object v3, Lcom/anall/screenlock/NotifyView;->mIconMap:Ljava/util/HashMap;

    aget-object v4, v2, v0

    aget-object v5, v1, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anall/screenlock/NotifyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anall/screenlock/NotifyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/anall/screenlock/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/anall/screenlock/NotifyView;->mShowArrays:Landroid/util/SparseArray;

    .line 52
    invoke-direct {p0}, Lcom/anall/screenlock/NotifyView;->initBaseViews()V

    .line 53
    return-void
.end method

.method private dissmissView(ILandroid/view/View;)V
    .locals 2
    .parameter "key"
    .parameter "view"

    .prologue
    .line 101
    invoke-virtual {p0, p2}, Lcom/anall/screenlock/NotifyView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 103
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/anall/screenlock/NotifyView;->mShowArrays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/anall/screenlock/NotifyView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initBaseViews()V
    .locals 7

    .prologue
    const v6, 0x1020006

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/anall/screenlock/NotifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, context:Landroid/content/Context;
    const/high16 v2, 0x427c

    invoke-static {v0, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/anall/screenlock/NotifyView;->mChildWidth:I

    .line 66
    const/high16 v2, 0x41e0

    invoke-static {v0, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/anall/screenlock/NotifyView;->mChildHeight:I

    .line 67
    const/high16 v2, 0x4080

    invoke-static {v0, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/anall/screenlock/NotifyView;->mChildDivider:I

    .line 69
    const-string v2, ""

    invoke-virtual {p0, v2, v4, v5}, Lcom/anall/screenlock/NotifyView;->addNotifyView(Ljava/lang/String;IZ)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 71
    const v3, 0x7f020134

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    const-string v2, ""

    invoke-virtual {p0, v2, v4, v5}, Lcom/anall/screenlock/NotifyView;->addNotifyView(Ljava/lang/String;IZ)Landroid/view/View;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 74
    const v3, 0x7f020135

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    return-void
.end method

.method private pkg2key(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 217
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected addNotifyView(Ljava/lang/String;IZ)Landroid/view/View;
    .locals 10
    .parameter "pkg"
    .parameter "num"
    .parameter "force"

    .prologue
    const/4 v9, 0x5

    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 129
    if-nez p3, :cond_1

    if-gtz p2, :cond_1

    const/4 v2, 0x0

    .line 164
    :cond_0
    :goto_0
    return-object v2

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/anall/screenlock/NotifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 132
    .local v2, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 133
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 134
    .local v1, iv:Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 136
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 137
    const v5, 0x1020006

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 138
    invoke-virtual {v1, v7, v9, v7, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 139
    invoke-static {v8, v8}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 140
    .local v3, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/anall/screenlock/NotifyView;->mChildHeight:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v5, p0, Lcom/anall/screenlock/NotifyView;->mChildHeight:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 141
    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    if-nez p3, :cond_2

    .line 143
    invoke-virtual {p0, p1}, Lcom/anall/screenlock/NotifyView;->getIconFromPkg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_2
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 147
    .local v4, tv:Landroid/widget/TextView;
    const/16 v5, 0x33

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 148
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 151
    const/high16 v5, 0x41b8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 152
    const v5, 0x1020014

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 153
    invoke-static {v6, v6}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 154
    iget v5, p0, Lcom/anall/screenlock/NotifyView;->mChildDivider:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 155
    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-virtual {p0}, Lcom/anall/screenlock/NotifyView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 159
    .restart local v3       #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/anall/screenlock/NotifyView;->mChildDivider:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 160
    iget v5, p0, Lcom/anall/screenlock/NotifyView;->mChildDivider:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 161
    invoke-virtual {p0, v2, v6, v3}, Lcom/anall/screenlock/NotifyView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 162
    if-nez p3, :cond_0

    .line 163
    iget-object v5, p0, Lcom/anall/screenlock/NotifyView;->mShowArrays:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/anall/screenlock/NotifyView;->pkg2key(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public addNotifyView(Ljava/lang/String;I)V
    .locals 1
    .parameter "pkg"
    .parameter "num"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/anall/screenlock/NotifyView;->addNotifyView(Ljava/lang/String;IZ)Landroid/view/View;

    .line 126
    return-void
.end method

.method getIconFromPkg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "pkg"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/anall/screenlock/NotifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 169
    .local v0, context:Landroid/content/Context;
    sget-object v4, Lcom/anall/screenlock/NotifyView;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .local v1, icon:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/anall/screenlock/NotifyView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-static {v0, v1, v5}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 179
    :goto_0
    return-object v4

    .line 173
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 175
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 176
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 177
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    .line 179
    invoke-virtual {p0}, Lcom/anall/screenlock/NotifyView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020115

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0
.end method

.method isSpecialPkg(Ljava/lang/String;)Z
    .locals 8
    .parameter "pkg"

    .prologue
    const/4 v7, 0x0

    .line 183
    sget-object v6, Lcom/anall/screenlock/NotifyView;->mSpecialPkg:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/anall/screenlock/NotifyView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 187
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 190
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 191
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_3

    .line 199
    .end local v0           #i:I
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.DIAL"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 203
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0       #i:I
    :goto_1
    if-gez v0, :cond_6

    .line 210
    .end local v0           #i:I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/anall/screenlock/NotifyView;->mSpecialPkg:Ljava/lang/String;

    .line 212
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_2
    sget-object v6, Lcom/anall/screenlock/NotifyView;->mSpecialPkg:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_9

    const/4 v6, 0x1

    :goto_2
    return v6

    .line 192
    .restart local v0       #i:I
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 193
    .local v3, p:Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_5

    .line 191
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 195
    :cond_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 204
    .end local v3           #p:Ljava/lang/String;
    :cond_6
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 205
    .restart local v3       #p:Ljava/lang/String;
    if-eqz v3, :cond_7

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_8

    .line 203
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 207
    :cond_8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .end local v0           #i:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #p:Ljava/lang/String;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_9
    move v6, v7

    .line 212
    goto :goto_2
.end method

.method public updateMissCall(II)V
    .locals 3
    .parameter "fun"
    .parameter "num"

    .prologue
    .line 115
    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0, p1}, Lcom/anall/screenlock/NotifyView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, view:Landroid/view/View;
    if-lez p2, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    if-lez p2, :cond_0

    .line 119
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 120
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public updateNotice(ILjava/lang/String;)V
    .locals 5
    .parameter "num"
    .parameter "pkg"

    .prologue
    const/4 v3, 0x2

    .line 78
    if-nez p2, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/anall/screenlock/NotifyView;->getChildCount()I

    move-result v0

    .line 81
    .local v0, count:I
    if-le v0, v3, :cond_0

    invoke-virtual {p0, v3, v0}, Lcom/anall/screenlock/NotifyView;->removeViews(II)V

    .line 98
    .end local v0           #count:I
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0, p2}, Lcom/anall/screenlock/NotifyView;->isSpecialPkg(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    invoke-direct {p0, p2}, Lcom/anall/screenlock/NotifyView;->pkg2key(Ljava/lang/String;)I

    move-result v1

    .line 87
    .local v1, key:I
    iget-object v3, p0, Lcom/anall/screenlock/NotifyView;->mShowArrays:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 88
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_2

    invoke-virtual {p0, p2, p1}, Lcom/anall/screenlock/NotifyView;->addNotifyView(Ljava/lang/String;I)V

    goto :goto_0

    .line 90
    :cond_2
    if-gtz p1, :cond_3

    .line 91
    invoke-direct {p0, v1, v2}, Lcom/anall/screenlock/NotifyView;->dissmissView(ILandroid/view/View;)V

    goto :goto_0

    .line 93
    :cond_3
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 94
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
