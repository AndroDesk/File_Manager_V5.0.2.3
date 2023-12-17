.class public final Landroidx/preference/a;
.super Landroidx/preference/Preference;
.source "ExpandButton.java"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 4
    sget p1, Landroidx/preference/n;->expand_button:I

    .line 6
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 9
    sget p1, Landroidx/preference/k;->ic_arrow_down_24dp:I

    .line 11
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 14
    sget p1, Landroidx/preference/o;->expand_button_title:I

    .line 16
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 19
    const/16 p1, 0x3e7

    .line 21
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p2

    .line 33
    const/4 v0, 0x0

    .line 34
    :cond_21
    :goto_21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_71

    .line 40
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroidx/preference/Preference;

    .line 46
    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    .line 49
    move-result-object v2

    .line 50
    instance-of v3, v1, Landroidx/preference/PreferenceGroup;

    .line 52
    if-eqz v3, :cond_41

    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_41

    .line 60
    move-object v4, v1

    .line 61
    check-cast v4, Landroidx/preference/PreferenceGroup;

    .line 63
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_41
    invoke-virtual {v1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_53

    .line 76
    if-eqz v3, :cond_21

    .line 78
    check-cast v1, Landroidx/preference/PreferenceGroup;

    .line 80
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_21

    .line 84
    :cond_53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_21

    .line 90
    if-nez v0, :cond_5d

    .line 92
    move-object v0, v2

    .line 93
    goto :goto_21

    .line 94
    :cond_5d
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    .line 97
    move-result-object v1

    .line 98
    sget v3, Landroidx/preference/o;->summary_collapsed_preference_list:I

    .line 100
    const/4 v4, 0x2

    .line 101
    new-array v4, v4, [Ljava/lang/Object;

    .line 103
    const/4 v5, 0x0

    .line 104
    aput-object v0, v4, v5

    .line 106
    const/4 v0, 0x1

    .line 107
    aput-object v2, v4, v0

    .line 109
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    goto :goto_21

    .line 114
    :cond_71
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    const-wide/32 p1, 0xf4240

    .line 120
    add-long/2addr p3, p1

    .line 121
    iput-wide p3, p0, Landroidx/preference/a;->a:J

    .line 123
    return-void
.end method


# virtual methods
.method public final getId()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidx/preference/a;->a:J

    .line 3
    return-wide v0
.end method

.method public final onBindViewHolder(Landroidx/preference/h;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Landroidx/preference/h;->d:Z

    .line 7
    return-void
.end method
