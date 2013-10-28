.class public Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooseAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private act:Landroid/app/Activity;

.field private isBatchAdd:Z

.field private isMutiChoose:Z

.field private isShowShortCut:I

.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckListener:Landroid/view/View$OnClickListener;

.field private mCheckRecoder:Landroid/util/SparseBooleanArray;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelecteStrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;ZZI)V
    .locals 2
    .parameter "act"
    .parameter
    .parameter "mutiChoose"
    .parameter "batchAdd"
    .parameter "isShowShortCut"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;ZZI)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 120
    new-instance v1, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$1;-><init>(Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mCheckListener:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p1, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->act:Landroid/app/Activity;

    .line 33
    iput-boolean p4, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->isBatchAdd:Z

    .line 34
    iput-boolean p3, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->isMutiChoose:Z

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    iput p5, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->isShowShortCut:I

    .line 37
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 38
    .local v0, len:I
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mCheckRecoder:Landroid/util/SparseBooleanArray;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mSelecteStrs:Ljava/util/ArrayList;

    .line 40
    iput-object p2, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mAppList:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->isBatchAdd:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mCheckRecoder:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mSelecteStrs:Ljava/util/ArrayList;

    return-object v0
.end method

.method private isChecked(Lcom/anall/app/bean/AppInfo;I)Z
    .locals 2
    .parameter "info"
    .parameter "position"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->isBatchAdd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mCheckRecoder:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    iget v0, p1, Lcom/anall/app/bean/AppInfo;->isVisible:I

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mCheckRecoder:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mCheckRecoder:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mCheckRecoder:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mCheckRecoder:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 46
    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mCheckRecoder:Landroid/util/SparseBooleanArray;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mSelecteStrs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mSelecteStrs:Ljava/util/ArrayList;

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    iput-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mAppList:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, size:I
    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    :cond_0
    iget v1, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->isShowShortCut:I

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 59
    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mAppList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->isShowShortCut:I

    if-lez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mAppList:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 76
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectRecoder()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    iget-object v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mSelecteStrs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 151
    .local v0, len:I
    new-array v1, v0, [Ljava/lang/String;

    .line 152
    .local v1, result:[Ljava/lang/String;
    iget-object v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mSelecteStrs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 153
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, holder:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030031

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    new-instance v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;

    .end local v0           #holder:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;)V

    .line 85
    .restart local v0       #holder:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;
    const v2, 0x7f0900e3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 86
    const v2, 0x7f0900e4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f0900e5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 88
    iget-boolean v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->isMutiChoose:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 90
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    :goto_1
    iget v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->isShowShortCut:I

    if-lez v2, :cond_5

    .line 94
    if-nez p1, :cond_4

    .line 95
    iget-object v3, v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->isShowShortCut:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    const v2, 0x7f0201c8

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->act:Landroid/app/Activity;

    const v4, 0x7f0a00e9

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    :goto_3
    return-object p2

    .line 89
    :cond_1
    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mCheckListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;
    check-cast v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;
    goto :goto_1

    .line 95
    :cond_3
    const v2, 0x7f0201c7

    goto :goto_2

    .line 99
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 102
    :cond_5
    iget-object v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/app/bean/AppInfo;

    .line 103
    .local v1, info:Lcom/anall/app/bean/AppInfo;
    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-boolean v2, p0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->isMutiChoose:Z

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 107
    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setId(I)V

    .line 108
    iget-object v2, v0, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0, v1, p1}, Lcom/lx/launcher8/setting/adapter/ChooseAppAdapter;->isChecked(Lcom/anall/app/bean/AppInfo;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3
.end method
