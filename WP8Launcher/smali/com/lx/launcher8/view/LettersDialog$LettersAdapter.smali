.class Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;
.super Landroid/widget/BaseAdapter;
.source "LettersDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/LettersDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LettersAdapter"
.end annotation


# instance fields
.field mDisColor:I

.field final synthetic this$0:Lcom/lx/launcher8/view/LettersDialog;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/view/LettersDialog;I)V
    .locals 0
    .parameter
    .parameter "color"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 109
    iput p2, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->mDisColor:I

    .line 110
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;)Lcom/lx/launcher8/view/LettersDialog;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->chars:[C
    invoke-static {v0}, Lcom/lx/launcher8/view/LettersDialog;->access$0(Lcom/lx/launcher8/view/LettersDialog;)[C

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 123
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 128
    iget-object v7, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->chars:[C
    invoke-static {v7}, Lcom/lx/launcher8/view/LettersDialog;->access$0(Lcom/lx/launcher8/view/LettersDialog;)[C

    move-result-object v7

    array-length v7, v7

    if-ge p1, v7, :cond_1

    const/4 v1, 0x1

    .line 129
    .local v1, isText:Z
    :goto_0
    if-eqz v1, :cond_4

    .line 130
    const/4 v6, 0x0

    .line 131
    .local v6, tv:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    instance-of v7, p2, Landroid/widget/TextView;

    if-nez v7, :cond_2

    .line 132
    :cond_0
    new-instance v6, Landroid/widget/TextView;

    .end local v6           #tv:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lx/launcher8/view/LettersDialog;->access$1(Lcom/lx/launcher8/view/LettersDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    .restart local v6       #tv:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->itemWidth:I
    invoke-static {v7}, Lcom/lx/launcher8/view/LettersDialog;->access$2(Lcom/lx/launcher8/view/LettersDialog;)I

    move-result v7

    iget-object v8, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->itemHeight:I
    invoke-static {v8}, Lcom/lx/launcher8/view/LettersDialog;->access$3(Lcom/lx/launcher8/view/LettersDialog;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 135
    .local v5, size:I
    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    const/16 v7, 0x53

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    iget v7, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->mDisColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 138
    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 139
    const/high16 v7, 0x420c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 141
    .end local v5           #size:I
    :goto_1
    iget-object v7, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->chars:[C
    invoke-static {v7}, Lcom/lx/launcher8/view/LettersDialog;->access$0(Lcom/lx/launcher8/view/LettersDialog;)[C

    move-result-object v7

    aget-char v0, v7, p1

    .line 142
    .local v0, cc:C
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v7, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->mAdapter:Lcom/lx/launcher8/adapter/AppAdapter;
    invoke-static {v7}, Lcom/lx/launcher8/view/LettersDialog;->access$4(Lcom/lx/launcher8/view/LettersDialog;)Lcom/lx/launcher8/adapter/AppAdapter;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/lx/launcher8/adapter/AppAdapter;->existsIndex(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 144
    iget-object v7, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->mThemeColor:I
    invoke-static {v7}, Lcom/lx/launcher8/view/LettersDialog;->access$5(Lcom/lx/launcher8/view/LettersDialog;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 145
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 149
    :goto_2
    new-instance v7, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter$1;

    invoke-direct {v7, p0, v0}, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter$1;-><init>(Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;C)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .end local v0           #cc:C
    .end local v6           #tv:Landroid/widget/TextView;
    :goto_3
    return-object v6

    .line 128
    .end local v1           #isText:Z
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .restart local v1       #isText:Z
    .restart local v6       #tv:Landroid/widget/TextView;
    :cond_2
    move-object v6, p2

    .line 140
    check-cast v6, Landroid/widget/TextView;

    goto :goto_1

    .line 147
    .restart local v0       #cc:C
    :cond_3
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 163
    .end local v0           #cc:C
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_4
    iget-object v7, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->itemWidth:I
    invoke-static {v7}, Lcom/lx/launcher8/view/LettersDialog;->access$2(Lcom/lx/launcher8/view/LettersDialog;)I

    move-result v7

    iget-object v8, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->itemHeight:I
    invoke-static {v8}, Lcom/lx/launcher8/view/LettersDialog;->access$3(Lcom/lx/launcher8/view/LettersDialog;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 164
    .restart local v5       #size:I
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lx/launcher8/view/LettersDialog;->access$1(Lcom/lx/launcher8/view/LettersDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 165
    .local v3, rlayout:Landroid/widget/RelativeLayout;
    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget v7, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->mDisColor:I

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 167
    new-instance v2, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lx/launcher8/view/LettersDialog;->access$1(Lcom/lx/launcher8/view/LettersDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v2, iv:Landroid/widget/ImageView;
    const v7, 0x7f0200e6

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 170
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setMaxHeight(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 171
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v4, rlp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 173
    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 175
    invoke-virtual {v3, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v6, v3

    .line 176
    goto :goto_3
.end method
