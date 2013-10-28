.class public Lcom/lx/launcher8/view/IntPreference;
.super Landroid/preference/Preference;
.source "IntPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/view/IntPreference$SavedState;
    }
.end annotation


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 40
    iget v0, p0, Lcom/lx/launcher8/view/IntPreference;->mCount:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/lx/launcher8/view/IntPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 89
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/lx/launcher8/view/IntPreference$SavedState;

    .line 86
    .local v0, myState:Lcom/lx/launcher8/view/IntPreference$SavedState;
    invoke-virtual {v0}, Lcom/lx/launcher8/view/IntPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 87
    iget v1, v0, Lcom/lx/launcher8/view/IntPreference$SavedState;->clickCounter:I

    iput v1, p0, Lcom/lx/launcher8/view/IntPreference;->mCount:I

    .line 88
    invoke-virtual {p0}, Lcom/lx/launcher8/view/IntPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 65
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/lx/launcher8/view/IntPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 71
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/lx/launcher8/view/IntPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/IntPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 72
    .local v0, myState:Lcom/lx/launcher8/view/IntPreference$SavedState;
    iget v2, p0, Lcom/lx/launcher8/view/IntPreference;->mCount:I

    iput v2, v0, Lcom/lx/launcher8/view/IntPreference$SavedState;->clickCounter:I

    move-object v1, v0

    .line 73
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 47
    iget v1, p0, Lcom/lx/launcher8/view/IntPreference;->mCount:I

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/view/IntPreference;->getPersistedInt(I)I

    move-result v1

    iput v1, p0, Lcom/lx/launcher8/view/IntPreference;->mCount:I

    .line 54
    .end local p2
    :goto_0
    return-void

    .line 50
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    .local v0, value:I
    iput v0, p0, Lcom/lx/launcher8/view/IntPreference;->mCount:I

    .line 52
    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/IntPreference;->persistInt(I)Z

    goto :goto_0
.end method
