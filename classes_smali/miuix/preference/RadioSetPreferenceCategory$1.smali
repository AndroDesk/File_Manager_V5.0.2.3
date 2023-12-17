.class Lmiuix/preference/RadioSetPreferenceCategory$1;
.super Ljava/lang/Object;
.source "RadioSetPreferenceCategory.java"

# interfaces
.implements Lmiuix/preference/OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/RadioSetPreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/RadioSetPreferenceCategory;


# direct methods
.method public constructor <init>(Lmiuix/preference/RadioSetPreferenceCategory;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/RadioSetPreferenceCategory$1;->this$0:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory$1;->this$0:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lmiuix/preference/RadioButtonPreference;

    .line 10
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioSetPreferenceCategory;->setChecked(Z)V

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory$1;->this$0:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 19
    invoke-static {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->access$000(Lmiuix/preference/RadioSetPreferenceCategory;)Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_21

    .line 25
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory$1;->this$0:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 27
    invoke-static {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->access$000(Lmiuix/preference/RadioSetPreferenceCategory;)Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1}, Lmiuix/preference/OnPreferenceChangeInternalListener;->notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V

    .line 34
    :cond_21
    return-void
.end method

.method public onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory$1;->this$0:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 3
    invoke-static {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->access$000(Lmiuix/preference/RadioSetPreferenceCategory;)Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory$1;->this$0:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 11
    invoke-static {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->access$000(Lmiuix/preference/RadioSetPreferenceCategory;)Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Lmiuix/preference/OnPreferenceChangeInternalListener;->onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_13
    const/4 p1, 0x1

    .line 21
    return p1
.end method
