.class Lmiuix/preference/DropDownPreference$1$1;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/DropDownPreference$1;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lmiuix/preference/DropDownPreference$1;

.field public final synthetic val$value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiuix/preference/DropDownPreference$1;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$1$1;->this$1:Lmiuix/preference/DropDownPreference$1;

    .line 3
    iput-object p2, p0, Lmiuix/preference/DropDownPreference$1$1;->val$value:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$1$1;->val$value:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lmiuix/preference/DropDownPreference$1$1;->this$1:Lmiuix/preference/DropDownPreference$1;

    .line 5
    iget-object v1, v1, Lmiuix/preference/DropDownPreference$1;->this$0:Lmiuix/preference/DropDownPreference;

    .line 7
    invoke-virtual {v1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_25

    .line 17
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$1$1;->this$1:Lmiuix/preference/DropDownPreference$1;

    .line 19
    iget-object v0, v0, Lmiuix/preference/DropDownPreference$1;->this$0:Lmiuix/preference/DropDownPreference;

    .line 21
    iget-object v1, p0, Lmiuix/preference/DropDownPreference$1$1;->val$value:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_25

    .line 29
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$1$1;->this$1:Lmiuix/preference/DropDownPreference$1;

    .line 31
    iget-object v0, v0, Lmiuix/preference/DropDownPreference$1;->this$0:Lmiuix/preference/DropDownPreference;

    .line 33
    iget-object v1, p0, Lmiuix/preference/DropDownPreference$1$1;->val$value:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 38
    :cond_25
    return-void
.end method
