.class public Landroidx/preference/DropDownPreference;
.super Landroidx/preference/ListPreference;
.source "DropDownPreference.java"


# instance fields
.field public final l:Landroid/widget/ArrayAdapter;

.field public m:Landroid/widget/Spinner;

.field public final n:Landroidx/preference/DropDownPreference$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    sget v0, Landroidx/preference/i;->dropdownPreferenceStyle:I

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroidx/preference/DropDownPreference$a;

    invoke-direct {p2, p0}, Landroidx/preference/DropDownPreference$a;-><init>(Landroidx/preference/DropDownPreference;)V

    iput-object p2, p0, Landroidx/preference/DropDownPreference;->n:Landroidx/preference/DropDownPreference$a;

    .line 5
    new-instance p2, Landroid/widget/ArrayAdapter;

    const p3, 0x1090009

    invoke-direct {p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 6
    iput-object p2, p0, Landroidx/preference/DropDownPreference;->l:Landroid/widget/ArrayAdapter;

    .line 7
    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 8
    iget-object p1, p0, Landroidx/preference/ListPreference;->g:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_2d

    .line 9
    array-length p2, p1

    const/4 p3, 0x0

    :goto_1d
    if-ge p3, p2, :cond_2d

    aget-object v0, p1, p3

    .line 10
    iget-object v1, p0, Landroidx/preference/DropDownPreference;->l:Landroid/widget/ArrayAdapter;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    :cond_2d
    return-void
.end method


# virtual methods
.method public final notifyChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 4
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->l:Landroid/widget/ArrayAdapter;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 11
    :cond_a
    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/h;)V
    .registers 8

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    sget v1, Landroidx/preference/l;->spinner:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/Spinner;

    .line 11
    iput-object v0, p0, Landroidx/preference/DropDownPreference;->m:Landroid/widget/Spinner;

    .line 13
    iget-object v1, p0, Landroidx/preference/DropDownPreference;->l:Landroid/widget/ArrayAdapter;

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 18
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->m:Landroid/widget/Spinner;

    .line 20
    iget-object v1, p0, Landroidx/preference/DropDownPreference;->n:Landroidx/preference/DropDownPreference$a;

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 25
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->m:Landroid/widget/Spinner;

    .line 27
    iget-object v1, p0, Landroidx/preference/ListPreference;->i:Ljava/lang/String;

    .line 29
    iget-object v2, p0, Landroidx/preference/ListPreference;->h:[Ljava/lang/CharSequence;

    .line 31
    const/4 v3, -0x1

    .line 32
    if-eqz v1, :cond_38

    .line 34
    if-eqz v2, :cond_38

    .line 36
    array-length v4, v2

    .line 37
    add-int/2addr v4, v3

    .line 38
    :goto_25
    if-ltz v4, :cond_38

    .line 40
    aget-object v5, v2, v4

    .line 42
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_35

    .line 52
    move v3, v4

    .line 53
    goto :goto_38

    .line 54
    :cond_35
    add-int/lit8 v4, v4, -0x1

    .line 56
    goto :goto_25

    .line 57
    :cond_38
    :goto_38
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 60
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    .line 63
    return-void
.end method

.method public final onClick()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->m:Landroid/widget/Spinner;

    .line 3
    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 6
    return-void
.end method
