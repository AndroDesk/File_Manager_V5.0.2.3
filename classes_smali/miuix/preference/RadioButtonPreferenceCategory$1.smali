.class Lmiuix/preference/RadioButtonPreferenceCategory$1;
.super Ljava/lang/Object;
.source "RadioButtonPreferenceCategory.java"

# interfaces
.implements Lmiuix/preference/OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/RadioButtonPreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method public constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 3
    invoke-static {v0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$100(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 9
    invoke-static {v0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$200(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 12
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 14
    invoke-static {v0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$300(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 17
    return-void
.end method

.method public onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroid/widget/Checkable;

    .line 4
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 6
    invoke-virtual {v1}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$d;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_15

    .line 12
    iget-object v2, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 14
    invoke-static {v2, p1, p2}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$000(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 19
    invoke-interface {v1, p1}, Landroidx/preference/Preference$d;->onPreferenceClick(Landroidx/preference/Preference;)Z

    .line 22
    :cond_15
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    .line 25
    move-result p1

    .line 26
    xor-int/lit8 p1, p1, 0x1

    .line 28
    return p1
.end method
